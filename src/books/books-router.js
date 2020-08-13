const path = require('path');
const express = require('express');
const BooksService = require('./books-service');

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
