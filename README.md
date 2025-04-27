# Educational Website

This project is a simple educational blog website built using ASP.NET Web Forms and C#.  
The main purpose of the site is to allow users to view educational posts, register/login, and interact with the content (such as commenting and downloading materials).

---

## 📚 Features

- User registration and authentication
- Viewing educational content (articles, tutorials, projects)
- Contacting site administrators via a contact form
- Posting comments on articles
- Downloading materials
- Admin panel to manage users, posts, and comments

---

## 🛠️ Technologies Used

- **Backend**: ASP.NET Web Forms (C#)
- **Frontend**: HTML5, CSS3, Bootstrap 4, JavaScript (jQuery)
- **Database**: SQL Server (with Entity-Relationship (ER) modeling)

---

## 🗂️ Project Structure

- `Default.aspx` – Main homepage for displaying posts.
- `Login.aspx` – Login modal for user authentication.
- `Register.aspx` – User registration form.
- `Upload.aspx` – Page for uploading new content (admin users).
- `ManagePosts.aspx` – Admin page for approving and editing posts.
- `ManageComments.aspx` – Admin page for moderating comments.
- `ContactUs.aspx` – Page for users to send feedback to the admin.

---

## 🧩 Database Design

An ER (Entity-Relationship) diagram was created to model the system before implementation.  
Key Entities:

- **User**: Manages user accounts (admin and regular users).
- **Post**: Stores information about each educational material.
- **Comment**: Stores user comments on posts.
- **Message**: Stores contact form submissions.

(Relationships: One-to-Many between Users and Posts, Users and Comments.)

---

## 🚀 How to Run

1. Clone the repository.
2. Open the project with **Visual Studio**.
3. Restore NuGet packages if needed.
4. Configure the **connection string** in `Web.config` to point to your SQL Server.
5. Build and run the project (`Ctrl+F5`).

---

## 📌 Notes

- This project is developed primarily for educational purposes.
- Feel free to extend the admin panel functionalities (e.g., detailed analytics, user role management).
- Make sure you have **.NET Framework** installed (version compatible with Web Forms).

---

## 👩‍💻 Author

Made with ❤️ for learning and teaching.
