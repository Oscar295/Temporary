
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author Admin
 */
public class ProductDAO {

    public List<ProductDTO> list() {
        String sql = "SELECT id, category_id, name, price, size, color,"
                + " description, stock, image FROM tbl_Product ";
        List<ProductDTO> list = new ArrayList<>();
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductDTO product = new ProductDTO(rs.getInt("id"),
                        rs.getInt("category_id"),
                        rs.getString("name"),
                        rs.getDouble("price"),
                        rs.getString("size"),
                        rs.getString("color"),
                        rs.getString("description"),
                        rs.getInt("stock"),
                        rs.getString("image"));
                list.add(product);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Exception at ProductDAO list - " + e.getMessage());
        }
        return null;
    }

    public boolean update(ProductDTO product) {
        String sql = "UPDATE tbl_Product "
                + " SET category_id=?, name=?, price=?, size=?,"
                + " color=?, description=?, stock=?, image=? "
                + "WHERE id = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, product.getCategoryId());
            ps.setString(2, product.getName());
            ps.setDouble(3, product.getPrice());
            ps.setString(4, product.getSize());
            ps.setString(5, product.getColor());
            ps.setString(6, product.getDescription());
            ps.setInt(7, product.getStock());
            ps.setString(8, product.getImage());
            ps.setInt(9, product.getId());
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Exception at ProductDAO update - " + e.getMessage());
        }
        return false;
    }

    public boolean delete(int id) {
        String sql = "DELETE from tbl_Product WHERE id =?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Exception at ProductDAO delete - " + e.getMessage());
        }
        return false;
    }

    public boolean insert(ProductDTO product) {
        String sql = "INSERT INTO tbl_Product "
                + " VALUES(?,?,?,?,?,?,?,?,?) ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, product.getId());
            ps.setInt(2, product.getCategoryId());
            ps.setString(3, product.getName());
            ps.setDouble(4, product.getPrice());
            ps.setString(5, product.getSize());
            ps.setString(6, product.getColor());
            ps.setString(7, product.getDescription());
            ps.setInt(8, product.getStock());
            ps.setString(9, product.getImage());
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Exception at ProductDAO insert - " + e.getMessage());
        }
        return false;
    }

    public ProductDTO load(int id) {
        String sql = "SELECT id, category_id, name, price, size, color,"
                + " description, stock, image FROM tbl_Product "
                + " WHERE id = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                ProductDTO product = new ProductDTO(rs.getInt("id"),
                        rs.getInt("category_id"),
                        rs.getString("name"),
                        rs.getDouble("price"),
                        rs.getString("size"),
                        rs.getString("color"),
                        rs.getString("description"),
                        rs.getInt("stock"),
                        rs.getString("image"));
                return product;
            }
        } catch (Exception e) {
            System.out.println("Exception at ProductDAO load - " + e.getMessage());
        }
        return null;
    }

    public List<ProductDTO> listSearch(String keyword) {
        String sql = "SELECT id, category_id, name, price, size, color,"
                + " description, stock, image FROM tbl_Product "
                + " WHERE name like ?";
        List<ProductDTO> list = new ArrayList<>();
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductDTO product = new ProductDTO(rs.getInt("id"),
                        rs.getInt("category_id"),
                        rs.getString("name"),
                        rs.getDouble("price"),
                        rs.getString("size"),
                        rs.getString("color"),
                        rs.getString("description"),
                        rs.getInt("stock"),
                        rs.getString("image"));
                list.add(product);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Exception at BOOKDAO listSearch - " + e.getMessage());
        }
        return null;
    }
}
