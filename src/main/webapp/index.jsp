<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html lang="vi">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>JSP / Servlet Demo - CodeGym</title>
            <style>
                * {
                    box-sizing: border-box;
                    margin: 0;
                    padding: 0;
                }

                body {
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    background-color: #f0f4f8;
                    color: #334155;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    min-height: 100vh;
                    padding: 20px;
                }

                .container {
                    background: #ffffff;
                    border-radius: 12px;
                    box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.08), 0 8px 10px -6px rgba(0, 0, 0, 0.04);
                    width: 100%;
                    max-width: 520px;
                    padding: 32px;
                }

                .header {
                    text-align: center;
                    margin-bottom: 24px;
                }

                .badge {
                    display: inline-block;
                    background-color: #e0f2fe;
                    color: #0369a1;
                    font-size: 12px;
                    font-weight: 600;
                    padding: 4px 10px;
                    border-radius: 9999px;
                    margin-bottom: 8px;
                    text-transform: uppercase;
                    letter-spacing: 0.5px;
                }

                h1 {
                    color: #1e293b;
                    font-size: 24px;
                    font-weight: 700;
                }

                p.subtitle {
                    color: #64748b;
                    font-size: 14px;
                    margin-top: 6px;
                }

                .card-section {
                    background-color: #f8fafc;
                    border: 1px solid #e2e8f0;
                    border-radius: 8px;
                    padding: 18px;
                    margin-bottom: 20px;
                }

                .card-section h3 {
                    font-size: 15px;
                    color: #334155;
                    margin-bottom: 12px;
                }

                .form-group {
                    margin-bottom: 14px;
                }

                label {
                    display: block;
                    font-size: 13px;
                    font-weight: 600;
                    margin-bottom: 6px;
                    color: #475569;
                }

                input[type="text"] {
                    width: 100%;
                    padding: 10px 12px;
                    border: 1px solid #cbd5e1;
                    border-radius: 6px;
                    font-size: 14px;
                    outline: none;
                    transition: border-color 0.2s, box-shadow 0.2s;
                }

                input[type="text"]:focus {
                    border-color: #0284c7;
                    box-shadow: 0 0 0 3px rgba(2, 132, 199, 0.15);
                }

                .btn {
                    display: inline-block;
                    width: 100%;
                    text-align: center;
                    background-color: #0284c7;
                    color: #ffffff;
                    font-size: 14px;
                    font-weight: 600;
                    padding: 10px 16px;
                    border: none;
                    border-radius: 6px;
                    cursor: pointer;
                    text-decoration: none;
                    transition: background-color 0.2s, transform 0.1s;
                }

                .btn:hover {
                    background-color: #0369a1;
                }

                .btn:active {
                    transform: translateY(1px);
                }

                .quick-links {
                    text-align: center;
                    margin-top: 14px;
                }

                .quick-links a {
                    color: #0284c7;
                    font-size: 13px;
                    text-decoration: none;
                    font-weight: 500;
                }

                .quick-links a:hover {
                    text-decoration: underline;
                }

                .footer {
                    margin-top: 24px;
                    padding-top: 16px;
                    border-top: 1px solid #f1f5f9;
                    font-size: 12px;
                    color: #94a3b8;
                    text-align: center;
                }
            </style>
        </head>

        <body>

            <div class="container">
                <div class="header">
                    <span class="badge">Tomcat 10.1+ / Jakarta EE 10</span>
                    <h1>JSP & Servlet Demo</h1>
                    <p class="subtitle">Ứng dụng mẫu cho bài thực hành Java Web với Maven</p>
                </div>

                <!-- Khối gửi form tới Servlet -->
                <div class="card-section">
                    <h3>Gửi dữ liệu tới HelloServlet</h3>
                    <form action="hello" method="GET">
                        <div class="form-group">
                            <label for="username">Nhập họ và tên:</label>
                            <input type="text" id="username" name="username" placeholder="Ví dụ: Nguyễn Văn A" required>
                        </div>
                        <button type="submit" class="btn">Gửi tới Servlet</button>
                    </form>
                </div>

                <!-- Khối link trực tiếp -->
                <div class="quick-links">
                    <a href="hello">Hoặc truy cập trực tiếp /hello &rarr;</a>
                </div>

                <div class="footer">
                    <p>Server time: <%= new java.util.Date() %>
                    </p>
                    <p>Java: <%= System.getProperty("java.version") %>
                    </p>
                </div>
            </div>

        </body>

        </html>