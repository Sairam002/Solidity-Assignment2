//SPDX-License-Identifier:MIT
pragma solidity 0.8.6;

contract structure {
    struct Book {
        string title;
        string author;
        uint bookID;
        uint price;
    }
    Book book;

    function setBook() public {
        book = Book("Blokchain for beginners", "Ineuron", 4, 1000);
    }

    //Gas till this function --> 209044 gas

    function getBookId() public view returns (uint) {
        return book.bookID;
    }

    //Gas consumed by this function --> 26,006 gas

    //Gas till this function --> 235050 gas

    function getBookName() public view returns (string memory) {
        return book.title;
    }

    //Gas consumed by this function --> 93,221  gas

    //Gas till this function --> 328271 gas

    function getBookAuthor() public view returns (string memory) {
        return book.author;
    }

    //Gas consumed by this function --> 47,156 gas

    //Gas till this function --> 375427 gas

    function getBookPrice() public view returns (uint) {
        return book.price;
    }
    //Gas consumed by this function --> 13,152 gas

    //Gas till this function --> 388579 gas
}
