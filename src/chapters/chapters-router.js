const path = require('path');
const express = require('express');
const ChaptersService = require('./chapters-service');

const chaptersRouter = express.Router();
const jsonParser = express.json();

chaptersRouter
    .route('/')
    .get((req, res, next) => {
        ChaptersService.getAllChapters(req.app.get('db'))
            .then(chapters => {
                res.json(chapters);
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
        res.json(res.chapter);
    });

module.exports = chaptersRouter;