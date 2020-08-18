const CommentsService = {
    getById(db, id) {
        return db
            .from('commentary_comments')
            .where({ id })
            .first();
    },
    insertComment(db, newComment) {
        return db
            .insert(newComment)
            .into('commentary_comments')
            .returning('*')
            .then(([comment]) => comment)
            .then(comment => 
                this.getById(db, comment.id)    
            );
    },
    updateComment(db, id, newCommentFields) {
        return db('commentary_comments')
            .where({ id })
            .update(newCommentFields);
    },
    deleteComment(db, id) {
        return db('commentary_comments')
            .where({ id })
            .delete();
    },
};

module.exports = CommentsService;