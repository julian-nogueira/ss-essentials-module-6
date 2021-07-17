# For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".

SELECT
    tbl_author.authorId,
    tbl_author.authorName,
    tbl_book.bookId,
    tbl_book.title,
    tbl_book_copies.noOfCopies,
    tbl_book_copies.branchId,
    tbl_library_branch.branchName
FROM
    tbl_author
INNER JOIN
    tbl_book
    ON tbl_book.authId = tbl_author.authorId
INNER JOIN
    tbl_book_copies
    ON tbl_book_copies.bookId = tbl_book.bookId
INNER JOIN
    tbl_library_branch
    ON tbl_library_branch.branchId = tbl_book_copies.branchId
WHERE
    tbl_author.authorName = 'Stephen King'
    AND tbl_library_branch.branchName = 'Central';