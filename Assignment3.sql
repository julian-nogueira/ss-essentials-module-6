# Retrieve the names of all borrowers who do not have any books checked out.

SELECT
    tbl_borrower.cardNo,
    tbl_borrower.name
FROM
    tbl_borrower
WHERE
    tbl_borrower.cardNo NOT IN(
        SELECT
            tbl_book_loans.cardNo
        FROM
            tbl_book_loans
    )
ORDER BY
    tbl_borrower.name;