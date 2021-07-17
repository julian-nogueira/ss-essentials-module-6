# Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.

SELECT
    tbl_borrower.name,
    tbl_borrower.address,
    COUNT(tbl_book_loans.bookId) AS countOfBooks
FROM
    tbl_borrower
INNER JOIN
    tbl_book_loans
    ON tbl_book_loans.cardNo = tbl_borrower.cardNo
GROUP BY
    tbl_borrower.cardNo
HAVING
    countOfBooks > 5;