const path = require('path');
const express = require('express');
const SectionsService = require('./sections-service');

const sectionsRouter = express.Router();
const jsonParser = express.json();

sectionsRouter
    .route('/')
    .get((req, res, next) => {
        SectionsService.getAllSections(req.app.get('db'))
            .then(sections => {
                res.json(sections);
            })
            .catch(next);
    });

sectionsRouter
    .route('/numbers')
    .get((req, res, next) => {
        SectionsService.getAllSectionNumbers(req.app.get('db'))
            .then(sectionNumbers => {
                res.json(sectionNumbers);
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
        res.json(res.section);
    });

module.exports = sectionsRouter;