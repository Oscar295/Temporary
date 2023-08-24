
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package maincontroller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class MainController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String action = request.getParameter("action");
            System.out.println("Action: "+ action);
            String url = null;
            if(action == null){
                url="login.jsp";
            }
            else if(action.equals("list")){
                url="admin";
            }
            else if(action.equals("login")){
                url="login";
            }
            else if(action.equals("logout")){
                url="logout";
            }
            else if(action.equals("edit")){
                url="edit";
            }
            else if(action.equals("delete")){
                url="delete";
            }
            else if(action.equals("Insert")){
                url="insert";
            }
            else if(action.equals("create")){
                url="create";
            }
            else if(action.equals("Update")){
                url="update";
            }
            else if(action.equals("categorylist")){
                url="categorylist";
            }
            else if(action.equals("categoryedit")){
                url="categoryedit";
            }
            else if(action.equals("categorydelete")){
                url="categorydelete";
            }
            else if(action.equals("categoryupdate")){
                url="updatecategory";
            }
            else if(action.equals("categorycreate")){
                url="/managing/categorycreate.jsp";
            }
            System.out.println(url);
            RequestDispatcher rs = request.getRequestDispatcher(url);
            rs.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}