const path = require('path');
const express = require('express');
const CommentsService = require('./comments-service');
const { requireAuth } = require('../middleware/jwt-auth');

const commentsRouter = express.Router();
const jsonParser = express.json();

commentsRouter
    .route('/')
    .all(requireAuth)
    .post(jsonParser, (req, res, next) => {
        const { section, tag, comment, comment_order } = req.body;
        const newComment = { section, tag, comment, comment_order };

        for (const [key, value] of Object.entries(newComment)) {
            if (value == null) {
                return res.status(400).json({
                    error: `Missing '${key}' in request body`,
                });
            }
        }

        CommentsService.insertComment(
            req.app.get('db'),
            newComment
        )
            .then(comment => {
                res
                    .status(201)
                    .location(path.posix.join(req.originalUrl, `/${comment.id}`))
                    .json(comment);
            })
            .catch(next);
    });

commentsRouter
    .route('/:comment_id')
    .all((req, res, next) => {
        CommentsService.getById(
            req.app.get('db'),
            req.params.comment_id
        )
            .then(comment => {
                if (!comment) {
                    return res.status(404).json({
                        error: { message: `Comment not found` },
                    });
                }
                res.comment = comment;
                next();
            })
            .catch(next);
    })
    .get((req, res, next) => {
        res.json(res.comment);
    })
    .delete(requireAuth, (req, res, next) => {
        CommentsService.deleteComment(
            req.app.get('db'),
            res.comment.id
        )
            .then(() => {
                res.status(204).end();
            })
            .catch(next);
    })
    .patch(requireAuth, jsonParser, (req, res, next) => {
        const { section, tag, comment, comment_order } = req.body;
        const commentToUpdate = { section, tag, comment, comment_order };

        const numberOfValues = Object.values(commentToUpdate).filter(Boolean).length;
        if (numberOfValues === 0) {
            return res.status(400).json({
                error: {
                    message: `Request body must contain 'section', 'tag', or 'comment'`,
                },
            });
        }

        CommentsService.updateComment(
            req.app.get('db'),
            res.comment.id,
            commentToUpdate
        )
            .then(numRowsAFfected => {
                res.status(204).end();
            })
            .catch(next);
    });

module.exports = commentsRouter;
