/* @name FindBookById */
SELECT * FROM books WHERE id = :commentId;

/*
  @name InsertBooks
  @param books -> ((rank, name, authorId)...)
*/
INSERT INTO books (rank, name, author_id)
VALUES :books RETURNING id as book_id;


/* @name GetBooksByAuthorName */
SELECT b.* FROM books b
INNER JOIN authors a ON a.id = b.author_id
WHERE a.first_name || ' ' || a.last_name = :authorName;
