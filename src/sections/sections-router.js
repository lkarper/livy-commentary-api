const path = require('path');
const express = require('express');
const SectionsService = require('./sections-service');
const { requireAuth } = require('../middleware/jwt-auth');
const BooksService = require('../books/books-service');

const sectionsRouter = express.Router();
const jsonParser = express.json();

sectionsRouter
    .route('/')
    .get((req, res, next) => {
        SectionsService.getAllSections(req.app.get('db'))
            .then(sections => {
                res.json(sections.map(SectionsService.formatSection));
            })
            .catch(next);
    })
    .post(requireAuth, jsonParser, (req, res, next) => {
        const { section_number, chapter_number, latin } = req.body;
        const newSection = { section_number, chapter_number, latin };

        for (const [key, value] of Object.entries(newSection)) {
            if (value == null) {
                return res.status(400).json({
                    error: `Missing '${key}' in request body`,
                });
            }
        }

        SectionsService.insertSection(
            req.app.get('db'),
            newSection
        )
            .then(section => {
                res
                    .status(201)
                    .location(path.posix.join(req.originalUrl, `/${section_number}`))
                    .json(SectionsService.formatSection(section));
            })
            .catch(next);
    });

sectionsRouter
    .route('/numbers')
    .get((req, res, next) => {
        SectionsService.getAllSectionNumbers(req.app.get('db'))
            .then(sectionNumbers => {
                res.json(sectionNumbers.map(BooksService.formatBook));
            })
            .catch(next);
    });

sectionsRouter
    .route('/:section_number')
    .all((req, res, next) => {
        SectionsService.getSectionByNumber(
            req.app.get('db'),
            req.params.section_number
        )
            .then(section => {
                if (!section) {
                    return res.status(404).json({
                        error: { message: `Section not found` },
                    });
                }
                res.section = section;
                next();
            })
            .catch(next);
    })
    .get((req, res, next) => {
        res.json(SectionsService.formatSection(res.section));
    })
    .delete(requireAuth, (req, res, next) => {
        SectionsService.deleteSection(
            req.app.get('db'),
            res.section.id
        )
            .then(() => {
                res.status(204).end();
            })
            .catch(next);
    })
    .patch(requireAuth, jsonParser, (req, res, next) => {
        const { section_number, chapter_number, latin } = req.body;
        const sectionToUpdate = { section_number, chapter_number, latin };    

        const numberOfValues = Object.values(sectionToUpdate).filter(Boolean).length;
        if (numberOfValues === 0) {
            return res.status(400).json({
                error: {
                    message: `Request body must contain 'section_number', 'chapter_number', or 'latin'`,
                },
            });
        }

        SectionsService.updateSection(
            req.app.get('db'),
            res.section.id,
            sectionToUpdate
        )
            .then(numRowsAffected => {
                res.status(204).end();
            })
            .catch(next);
    });

module.exports = sectionsRouter;
