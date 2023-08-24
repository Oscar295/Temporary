/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package orderdetail;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class OrderDetailDTO {
    private int id;
    private int OrderId;
    private Date date;
    private boolean status;
    private int quantity;
    private double total;

    public OrderDetailDTO() {
    }

    public OrderDetailDTO(int id, int OrderId, Date date, boolean status, int quantity, double total) {
        this.id = id;
        this.OrderId = OrderId;
        this.date = date;
        this.status = status;
        this.quantity = quantity;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int OrderId) {
        this.OrderId = OrderId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
}
