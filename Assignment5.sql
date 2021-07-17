# For each library branch, retrieve the branch name and the total number of books loaned out from that branch.

SELECT
    tbl_library_branch.branchName,
    tbl_library_branch.branchId,
    tbl_book_loans.bookId,
    SUM(tbl_book_copies.noOfCopies) As noOfBooksLoaned
FROM
    tbl_library_branch
INNER JOIN
    tbl_book_loans
    ON tbl_book_loans.branchId  = tbl_library_branch.branchId
INNER JOIN
    tbl_book_copies
    ON tbl_book_copies.bookId = tbl_book_loans.bookId
GROUP BY
    tbl_library_branch.branchId;