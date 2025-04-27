Educational Website

This project is a simple educational blog-style website where users can view tutorials, submit comments, and download resources. The website also provides a user panel for profile management and an admin panel for content and user management.
Technologies Used

    Back-End:

        C#

        ASP.NET Web Forms (.aspx, .aspx.cs)

        SQL Server (Database)

    Front-End:

        HTML5

        CSS3

        Bootstrap

        JavaScript

        jQuery

Database

The system uses a relational database designed with normalization principles in mind. An Entity-Relationship Diagram (ERD) was created to model the database structure.
Main entities include:

    Users (user accounts, roles)

    Posts (educational materials and articles)

    Comments (user feedback)

    Uploads (files uploaded by users or admins)

Each entity is related via appropriate primary and foreign keys to ensure data integrity.
Main Features

    User registration and login

    Viewing educational posts

    Downloading materials

    Commenting on posts

    Uploading new educational content

    Managing personal profile

    Admin panel for managing users, posts, and comments

How to Run

    Open the project in Visual Studio.

    Set up the SQL Server database using the provided scripts (or your own configuration).

    Update the connection string in the Web.config file accordingly.

    Build and run the project.

Notes

    The website uses Bootstrap for responsive design.

    Authentication is basic and managed through session variables.

    The UI is designed in Persian (Farsi)
