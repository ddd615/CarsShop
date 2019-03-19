package com.lzd.pojo;

import java.util.Date;

public class Order {
    private Integer ID;
    private String Name;
    private String Counts;
    private String Color;
    private String Payment;
    private String EnterpriseName;
    private String Address;
    private String Area;
    private String Dealer;
    private String Linkman;
    private String Phone;
    private String Remark;
    private Date IssueDate;
    private Integer Whether;

    public Integer getWhether() {
        return Whether;
    }

    public void setWhether(Integer whether) {
        Whether = whether;
    }

    public Integer getID() {
        return ID;
    }

    public void setID(Integer ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getCounts() {
        return Counts;
    }

    public void setCounts(String counts) {
        Counts = counts;
    }

    public String getColor() {
        return Color;
    }

    public void setColor(String color) {
        Color = color;
    }

    public String getPayment() {
        return Payment;
    }

    public void setPayment(String payment) {
        Payment = payment;
    }

    public String getEnterpriseName() {
        return EnterpriseName;
    }

    public void setEnterpriseName(String enterpriseName) {
        EnterpriseName = enterpriseName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getArea() {
        return Area;
    }

    public void setArea(String area) {
        Area = area;
    }

    public String getDealer() {
        return Dealer;
    }

    public void setDealer(String dealer) {
        Dealer = dealer;
    }

    public String getLinkman() {
        return Linkman;
    }

    public void setLinkman(String linkman) {
        Linkman = linkman;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getRemark() {
        return Remark;
    }

    public void setRemark(String remark) {
        Remark = remark;
    }

    public Date getIssueDate() {
        return IssueDate;
    }

    public void setIssueDate(Date issueDate) {
        IssueDate = issueDate;
    }
}
