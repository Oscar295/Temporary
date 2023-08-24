/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package category;

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
public class CategoryDAO {
    public CategoryDTO load(int id) {
        String sql = "SELECT id, category_name from tbl_Category "
                + " WHERE id = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                CategoryDTO category = new CategoryDTO(rs.getInt("id"),
                        rs.getString("category_name"));
                return category;
            }
        } catch (Exception e) {
            System.out.println("Exception at CategoryDAO load - " + e.getMessage());
        }
        return null;
    }
    public boolean update(CategoryDTO category) {
        String sql = "UPDATE tbl_Category "
                + " SET category_name=? "
                + " WHERE id = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, category.getName());
            ps.setInt(2, category.getId());
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Exception at CategoryDAO update - " + e.getMessage());
        }
        return false;
    }
    public List<CategoryDTO> list() {
        String sql = "SELECT id, category_name from tbl_Category ";
        List<CategoryDTO> list = new ArrayList<>();
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CategoryDTO category = new CategoryDTO(rs.getInt("id"),
                        rs.getString("category_name"));
                list.add(category);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Exception at CategoryDAO list - " + e.getMessage());
        }
        return null;
    }
    public boolean delete(int id){
        String sql = "DELETE from tbl_Category WHERE id= ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Exception at CategoryDAO delete - " + e.getMessage());
        }
        return false;
    }
}
