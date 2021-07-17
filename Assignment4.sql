# For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.

SELECT
    tbl_book.title,
    tbl_book_loans.bookId,
    tbl_book_loans.dueDate,
    tbl_borrower.name,
    tbl_borrower.cardNo,
    tbl_borrower.address
FROM
    tbl_borrower
INNER JOIN
    tbl_book_loans
    ON tbl_book_loans.cardNo = tbl_borrower.cardNo
INNER JOIN
    tbl_book
    ON tbl_book.bookId = tbl_book_loans.bookId
WHERE
    CAST(tbl_book_loans.dueDate AS DATE) = CURDATE();