package com.codegym;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "HelloServlet", value = "/hello")
public class HelloServlet extends HttpServlet {

    private String message;

    @Override
    public void init() {
        message = "Xin chào từ Servlet!";
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("username");
        if (name == null || name.trim().isEmpty()) {
            name = "bạn";
        }

        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<title>Kết quả Servlet</title>");
        out.println("<style>");
        out.println(
                "body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 40px; background-color: #f7fafc; color: #2d3748; }");
        out.println(
                ".card { background: #ffffff; padding: 24px; border-radius: 8px; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1); max-width: 500px; margin: 0 auto; }");
        out.println("h1 { color: #2b6cb0; font-size: 24px; margin-bottom: 12px; }");
        out.println(
                "a { display: inline-block; margin-top: 16px; color: #3182ce; text-decoration: none; font-weight: 500; }");
        out.println("a:hover { text-decoration: underline; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='card'>");
        out.println("<h1>" + message + "</h1>");
        out.println("<p>Chào mừng <strong>" + escapeHtml(name) + "</strong> đến với ứng dụng JSP/Servlet!</p>");
        out.println("<p>Thời gian xử lý trên Server: <code>" + java.time.LocalDateTime.now() + "</code></p>");
        out.println("<a href='index.jsp'>&larr; Quay lại trang chủ</a>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private String escapeHtml(String input) {
        if (input == null)
            return "";
        return input.replace("&", "&amp;")
                .replace("<", "&lt;")
                .replace(">", "&gt;")
                .replace("\"", "&quot;")
                .replace("'", "&#x27;");
    }

    @Override
    public void destroy() {
    }
}
