package Controller;

import Domain.User;
import Service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class UserServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String action = request.getParameter("page");
        System.out.println(action);

        if (action.equalsIgnoreCase("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            System.out.println(username + " " + password + " ");

            User user = new UserService().getUser(username, password);
//            System.out.println(user.getUsername()+" "+user.getPassword());
            if (user!=null) {
                HttpSession session = request.getSession();
                session.setAttribute("uid", user.getId());
                session.setAttribute("full_name", user.getFull_name());
                session.setAttribute("user", user);
                //                    System.out.println(session.getAttribute("user"));
                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("Pages/home_user.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
        }

        if (action.equalsIgnoreCase("newUser")) {
            RequestDispatcher rd = request.getRequestDispatcher("Pages/UserForm.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("register")) {
            User user = new User();
            System.out.println(request.getParameter("full_name"));
            user.setFull_name(request.getParameter("full_name"));
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setRole(request.getParameter("role"));
            new UserService().insertUser(user);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("index")){
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }

        if (checkStatus(request, response)) {
            if (action.equalsIgnoreCase("home")) {
                HttpSession session = request.getSession(false);
                RequestDispatcher rd = request.getRequestDispatcher("Pages/home_user.jsp");
                rd.forward(request, response);
            }

            if (action.equalsIgnoreCase("logout")) {
                HttpSession session = request.getSession(false);
                session.invalidate();
                request.setAttribute("msg", "Logout Success");
                System.out.println(request.getAttribute("msg"));
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }

            if (action.equalsIgnoreCase("addUser")) {
                User user = new User();
                user.setFull_name(request.getParameter("full_name"));
                user.setUsername(request.getParameter("username"));
                user.setPassword(request.getParameter("password"));
                user.setRole(request.getParameter("role"));
                new UserService().insertUser(user);
                List<User> userList = new UserService().getUserList();
                request.setAttribute("userList", userList);
                RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
                rd.forward(request, response);
            }

            if (action.equalsIgnoreCase("listUser")) {
                User user = new User();
                List<User> userList = new UserService().getUserList();
                request.setAttribute("userList", userList);
                request.setAttribute("user", user);
                RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
                rd.forward(request, response);
            }
            if (action.equalsIgnoreCase("deleteUser")) {
                int id = Integer.parseInt(request.getParameter("id"));
                UserService userService = new UserService();
                userService.deleteUser(id);
                List<User> userList = new UserService().getUserList();
                request.setAttribute("userList", userList);
                RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
                rd.forward(request, response);
            }
            if (action.equalsIgnoreCase("userEdit")) {
                int id = Integer.parseInt(request.getParameter("id"));
                System.out.println(id);
                User user = new UserService().getUserRow(id);
                request.setAttribute("id", id);
                request.setAttribute("user", user);
                RequestDispatcher rd = request.getRequestDispatcher("Pages/update_user.jsp");
                rd.forward(request, response);
            }
            if (action.equalsIgnoreCase("editUser")) {
                User user = new User();
                int id = Integer.parseInt(request.getParameter("id"));
                user.setFull_name(request.getParameter("full_name"));
                user.setUsername(request.getParameter("username"));
                user.setPassword(request.getParameter("password"));
                user.setRole(request.getParameter("role"));
                try {
                    new UserService().editUser(id, user);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                List<User> userList = new UserService().getUserList();
                request.setAttribute("userList", userList);
                RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
                rd.forward(request, response);
            }
            if (action.equalsIgnoreCase("userDetails")) {
                int id = Integer.parseInt(request.getParameter("id"));
                User user = new UserService().getUserRow(id);
                request.setAttribute("id", id);
                request.setAttribute("user", user);
                RequestDispatcher rd = request.getRequestDispatcher("Pages/user_details.jsp");
                rd.forward(request, response);

            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
                requestDispatcher.forward(request, response);
            }
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }

    public boolean checkStatus(HttpServletRequest request, HttpServletResponse response) {
        boolean status = false;
        HttpSession session = request.getSession(false);
        if (session.getAttribute("user") != null) {
            status = true;
        }
        return status;
    }
}
