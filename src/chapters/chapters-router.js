const path = require('path');
const express = require('express');
const ChaptersService = require('./chapters-service');
const { requireAuth } = require('../middleware/jwt-auth');

const chaptersRouter = express.Router();
const jsonParser = express.json();

chaptersRouter
    .route('/')
    .get((req, res, next) => {
        ChaptersService.getAllChapters(req.app.get('db'))
            .then(chapters => {
                res.json(chapters.map(ChaptersService.formatChapter));
            })
            .catch(next);
    })
    .post(requireAuth, jsonParser, (req, res, next) => {
        const { book_number, chapter_number, chapter_title, chapter_intro } = req.body;
        const newChapter = {
            book_number,
            chapter_number,
            chapter_title,
            chapter_intro
        };

        for (const [key, value] of Object.entries(newChapter)) {
            if (value == null) {
                return res.status(400).json({
                    error: `Missing '${key}' in request body`,
                });
            }
        }

        ChaptersService.insertChapter(
            req.app.get('db'),
            newChapter
        )
            .then(chapter => {
                res
                    .status(201)
                    .location(path.posix.join(req.originalUrl, `/${chapter_number}`))
                    .json(ChaptersService.formatChapter(chapter));
            })
            .catch(next);
    });

chaptersRouter
    .route('/numbers')
    .get((req, res, next) => {
        ChaptersService.getAllChapterNumbers(req.app.get('db'))
            .then(chapterNumbers => {
                res.json(chapterNumbers);
            })
            .catch(next);
    });

chaptersRouter
    .route('/:chapter_number')
    .all((req, res, next) => {
        ChaptersService.getByChapterNumber(
            req.app.get('db'),
            req.params.chapter_number
        )
            .then(chapter => {
                if (!chapter) {
                    return res.status(404).json({
                        error: { message: `Chapter not found` },
                    });
                }
                res.chapter = chapter;
                next();
            })
            .catch(next);
    })
    .get((req, res, next) => {
        res.json(ChaptersService.formatChapter(res.chapter));
    })
    .delete(requireAuth, (req, res, next) => {
        ChaptersService.deleteChapter(
            req.app.get('db'),
            res.chapter.id
        )
            .then(() => {
                res.status(204).end();
            })
            .catch(next);
    })
    .patch(requireAuth, jsonParser, (req, res, next) => {
        const { book_number, chapter_number, chapter_title, chapter_intro } = req.body;
        const chapterToUpdate = {
            book_number,
            chapter_number,
            chapter_title,
            chapter_intro
        };

        const numberOfValues = Object.values(chapterToUpdate).filter(Boolean).length;
        if (numberOfValues === 0) {
            return res.status(400).json({
                error: {
                    message: `Request body must contain 'book_number', 'chapter_number', 'chapter_title', or 'chapter_intro'`
                },
            });
        }
        
        ChaptersService.updateChapter(
            req.app.get('db'),
            res.chapter.id,
            chapterToUpdate
        )
            .then(numRowsAffected => {
                res.status(204).end();
            })
            .catch(next);
    });

module.exports = chaptersRouter;
