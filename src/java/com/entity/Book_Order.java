package com.entity;

public class Book_Order 
{
    private int id;
    private String orderId;
    private String userName;
    private String email;
    private String phno;
    private String fulladd;
    private String bookName;
    private String author;
    private String price;
    private String paymenttype;

    public Book_Order() {
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhno() {
        return phno;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }

    public String getFulladd() {
        return fulladd;
    }

    public void setFulladd(String fulladd) {
        this.fulladd = fulladd;
    }

    public String getPaymenttype() {
        return paymenttype;
    }

    public void setPaymenttype(String paymenttype) {
        this.paymenttype = paymenttype;
    }

    @Override
    public String toString() {
        return "Book_Order{" + "id=" + id + ", orderId=" + orderId + ", userName=" + userName + ", email=" + email + ", phno=" + phno + ", fulladd=" + fulladd + ", bookName=" + bookName + ", author=" + author + ", price=" + price + ", paymenttype=" + paymenttype + '}';
    }
}