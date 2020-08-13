const path = require('path');
const express = require('express');
const BooksService = require('./books-service');
const { requireAuth } = require('../middleware/jwt-auth');

const booksRouter = express.Router();
const jsonParser = express.json();

booksRouter
    .route('/')
    .get((req, res, next) => {
        BooksService.getAllBooks(req.app.get('db'))
            .then(books => {
                res.json(books);
            })
            .catch(next);
    })
    .post(requireAuth, jsonParser, (req, res, next) => {
        const { book_number } = req.body;
        const newBook = { book_number };

        for (const [key, value] of Object.entries(newBook)) {
            if (value == null) {
                return res.status(400).json({
                    error: `Missing '${key}' in request body`,
                });
            }
        }
        BooksService.insertBook(
            req.app.get('db'),
            newBook
        )
            .then(book => {
                res
                    .status(201)
                    .location(path.posix.join(req.originalUrl, `/${book_number}`))
                    .json(book);
            })
            .catch(next);
    });

booksRouter
    .route('/numbers')
    .get((req, res, next) => {
        BooksService.getAllBookNumbers(req.app.get('db'))
            .then(bookNumbers => {
                res.json(bookNumbers);
            })
            .catch(next);
    });

booksRouter
    .route('/:book_number')
    .all((req, res, next) => {
        BooksService.getByBookNumber(
            req.app.get('db'),
            req.params.book_number
        )
            .then(book => {
                if (!book) {
                    return res.status(404).json({
                        error: { message: `Book not found` },
                    });
                }
                res.book = book;
                next();
            })
            .catch(next);
    })
    .get((req, res, next) => {
        res.json(res.book);
    });

module.exports = booksRouter;
