# How many copies of the book titled The Lost Tribe are owned by each library branch?

SELECT
    tbl_book.bookId,
    tbl_book.title,
    tbl_book_copies.noOfCopies,
    tbl_library_branch.branchId,
    tbl_library_branch.branchName
FROM
    tbl_book
INNER JOIN
    tbl_book_copies
    ON tbl_book_copies.bookId = tbl_book.bookId
INNER JOIN
    tbl_library_branch
    ON tbl_library_branch.branchId = tbl_book_copies.branchId
WHERE
    tbl_book.title = 'The Lost Tribe';