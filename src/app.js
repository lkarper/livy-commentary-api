require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const { NODE_ENV } = require('./config');
const booksRouter = require('./books/books-router');
const chaptersRouter = require('./chapters/chapters-router');
const sectionsRouter = require('./sections/sections-router');
const authRouter = require('./auth/auth-router');
const commentsRouter = require('./comments/comments-router');

const app = express();

const morganOption = (NODE_ENV === 'production') ? 'tiny' : 'dev';
app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());

app.use('/api/books', booksRouter);
app.use('/api/chapters', chaptersRouter);
app.use('/api/sections', sectionsRouter);
app.use('/api/comments', commentsRouter)
app.use('/api/auth', authRouter);

app.use(function errorHandler(error, req, res, next) {
    let response;
    if (NODE_ENV === 'production') {
        response = { error: { message: 'server error' } };
    } else {
        console.error(error);
        response = { message: error.message, error };
    }
    res.status(500).json(response);
});

module.exports = app;