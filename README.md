# DMCampus

> A Flutter application for organizing and accessing university study materials.

**DMCampus** is a mobile application built with Flutter to help students organize and access their academic materials through a simple and structured interface.

The project was originally started as my **CS50x Final Project**, but from the beginning my goal was not simply to complete the course requirements. I wanted to build an application that could continue growing after the course and eventually become useful for real students in my department.

---

# Video Demo

https://www.youtube.com/watch?v=BSMbhyPloEQ

---

# GitHub Repository

https://github.com/ahmedashraf-dmc/DMCampus

---

# Project Overview

Students usually receive their study materials from many different sources. Lectures may be shared through messaging applications, books may be uploaded to cloud storage, assignments may be sent in group chats, and previous exams are often scattered across multiple places.

Finding the correct file quickly becomes difficult, especially after several semesters.

The purpose of DMCampus is to solve this problem by providing a single organized place where students can browse:

- Academic Level
- Semester
- Subject
- Study Material Category
- Files

Instead of searching through old conversations or multiple cloud folders, students can navigate through a clear hierarchy until they reach the material they need.

The current version focuses on the Renewable Energy Department in the Faculty of Technology and Education. However, the application's structure was intentionally designed to support additional departments and even different faculties in future versions with minimal changes to the application logic.

---

# Why I Built This Project

This project began as my submission for the **CS50x Final Project**, but I deliberately avoided building something that would only satisfy the course requirements.

Instead, I wanted to develop an application that solves a real problem faced by me and my classmates.

During my studies, course materials were distributed through different platforms and in inconsistent ways. Over time, it became increasingly difficult to locate lectures, books, assignments, or previous exams.

Rather than creating another file browser, I decided to design an application that organizes academic content according to the actual university structure.

The application follows the same hierarchy students already know:

Faculty → Department → Level → Semester → Subject → Category → Files

This approach makes navigation intuitive without requiring users to learn a new organization system.

Although the current implementation only contains one department, the internal architecture was planned from the beginning to allow future expansion without redesigning the application.

My long-term goal is to transform DMCampus into a complete platform where study materials can be updated online and become available to students without requiring a new application release.

The current version stores files locally as Flutter assets because this was the simplest and most reliable solution for the MVP. A future version will migrate the data layer to Firebase so materials can be managed remotely and updated in real time.

---

# Features

The current MVP includes the following functionality:

- Browse academic departments.
- Browse academic levels.
- Browse semesters.
- Browse subjects.
- Browse study material categories.
- View organized study files.
- Open PDF files directly from the application.
- Clean Material 3 user interface.
- Reusable UI components.
- Feature-based project structure.

The application was intentionally designed to remain simple while building a solid foundation for future development.

---

# Current Status

Current Version: MVP

Implemented:

- Departments
- Levels
- Semesters
- Subjects
- Categories
- PDF viewing
- Local Assets

---

# Application Flow

The navigation follows the actual academic structure used in the university.

```
Home
│
└── Department
    │
    └── Level
        │
        └── Semester
            │
            └── Subject
                │
                └── Category
                    │
                    └── Files
                        │
                        └── Open PDF
```

Each screen is responsible for displaying one level of the hierarchy, making the navigation predictable and easy to understand.

---

# Project Structure

The project follows a feature-based architecture instead of grouping files by type.

```
lib/
│
├── core/
│
├── features/
│   ├── departments/
│   ├── levels/
│   ├── semesters/
│   ├── subjects/
│   ├── categories/
│   └── files/
│
└── shared/
```

Each feature contains its own:

- Models
- Data
- Presentation

This approach keeps related code together, improves maintainability, and makes future expansion easier.

---

# Data Organization

One of the main goals of this project was to make the data structure flexible enough to support different subjects without changing the application logic.

The relationship between the application's models is:

```
Subject
    │
    └── Categories
            │
            └── Files
```

Every subject owns its own categories.

Every category owns its own files.

This design allows two different subjects to have completely different content while using the same UI and navigation system.

For example:

```
Technical Reports
├── Lectures
├── Sections
├── Assignments
├── Previous Exams
└── Books
```

Another subject may contain only:

```
English Language
├── Lectures
└── Books
```

No changes to the application's screens are required because the interface is generated directly from the available data.

This was one of the most important design decisions made during development because it removed unnecessary conditions from the UI and made the application easier to extend.

---

# Main Directories

The project is organized into several main directories.

- `core/` contains shared utilities and helper classes.
- `features/` contains all application features.
- `shared/` contains reusable widgets used throughout the application.
- `assets/` stores images and study materials.

---

# Technologies Used

The project was built using modern Flutter technologies while intentionally keeping the stack simple.

### Framework

- Flutter

### Programming Language

- Dart

### State Management

- Provider

### UI

- Material 3

### PDF Support

- open_filex
- path_provider

---

# Design Decisions

One of the requirements of the CS50 Final Project is to explain the most important design decisions made during development.

Below are the decisions that had the biggest impact on this project.

---

## Why Flutter?

I chose Flutter because I wanted to build a modern Android application using a single codebase.

Flutter provides an excellent developer experience, a rich widget library, fast hot reload, and a large ecosystem.

Although this version targets Android, Flutter also makes it possible to support iOS, Windows, Linux, macOS, and Web in the future without rewriting the application's architecture.

---

## Why Provider?

The application currently contains a relatively small amount of shared state.

Using Provider keeps the project simple while avoiding unnecessary complexity.

More advanced solutions such as Riverpod or Bloc were intentionally avoided because they would increase the learning curve and introduce additional boilerplate without providing significant benefits for the current scope of the project.

---

## Why a Feature-Based Structure?

Instead of organizing the project by file type, I organized it by feature.

For example:

```
features/
    departments/
    levels/
    semesters/
    subjects/
    categories/
    files/
```

Each feature contains its own models, data, and presentation layer.

This organization makes navigation inside the project easier and allows every feature to evolve independently.

As the application grows, new features can be added without affecting existing ones.

---

## Why Local Assets?

One of the biggest architectural decisions was choosing to store study materials as local assets instead of using a cloud backend.

For the MVP, this approach provides several advantages:

- No internet connection required.
- Faster loading times.
- Simpler deployment.
- Easier testing.
- Smaller development scope.

Using local assets allowed me to focus on building a stable application before introducing networking and backend services.

---

## Why Not Firebase Yet?

Firebase was considered during development.

However, I intentionally postponed integrating it until after completing the MVP.

Adding Firebase would require redesigning the data layer, implementing authentication, handling network errors, managing cloud storage, and introducing significantly more complexity.

Since the primary goal of this version was to build a functional and maintainable application, local assets were the more appropriate choice.

The current architecture was designed so that the data source can later be replaced with Firebase Storage and Firestore without requiring major changes to the user interface.

---

## Why Subject → Category → Files?

Originally, every subject directly contained a list of files.

This quickly became limiting.

Different subjects may contain different types of study materials.

For example:

- Some subjects only have lectures.
- Others include books.
- Others include assignments and previous exams.
- Future subjects may contain additional categories.

Instead of hardcoding these differences into the UI, I redesigned the data model so each subject owns its own categories, and each category owns its own files.

```
Subject
    │
    └── Categories
            │
            └── Files
```

This eliminated unnecessary conditions inside the interface and made the application considerably more flexible.

Today, adding new content usually requires updating only the data instead of modifying the application's logic.

---

# Challenges During Development

The most challenging part of the project was not building the user interface, but designing a data structure that would remain simple while supporting future expansion.

Several iterations of the models were created before reaching the current hierarchy.

Another challenge involved managing PDF files stored as Flutter assets.

Since Flutter assets cannot be browsed like normal folders at runtime, each file must be registered and referenced correctly.

This required careful organization of both the assets directory and the application's data layer.

Throughout development, the focus remained on reducing complexity rather than adding new technologies.

Many ideas were intentionally postponed until after the MVP to ensure the project remained maintainable and stable.

---

# Assets Structure

The current version stores all study materials locally inside the project's assets directory.

```
assets/
│
├── images/
│
└── files/
    ├── level_1_semester_1/
    │   └── english_1/
    │       └── lectures/
    │
    └── level_2_semester_2/
        └── technical_reports/
            ├── lectures/
            ├── sections/
            ├── assignments/
            ├── previous_exams/
            └── books/
```

Each subject has its own directory.

Inside every subject directory, files are grouped into categories such as lectures, sections, assignments, books, and previous exams.

Although the current version stores these files locally, the directory structure was intentionally designed so it can later be migrated to cloud storage without changing the application's overall organization.

---

# Current Limitations

The current version is intentionally focused on the Minimum Viable Product (MVP).

Some limitations include:

- Only the Renewable Energy Department is currently included.
- Study materials are stored locally as Flutter assets.
- No authentication system.
- No cloud synchronization.
- No search functionality.
- No favorites system.
- No download manager.
- No administrator panel.

These limitations were accepted to keep the first version stable and maintainable before introducing more advanced features.

---

# Future Improvements

The long-term vision for DMCampus extends beyond the current MVP.

Future versions may include:

- Firebase Storage integration.
- Cloud-based file management.
- Firestore database.
- Student authentication.
- Search functionality.
- Favorites.
- Download manager.
- Push notifications.
- Support for additional departments.
- Support for multiple faculties.

Moving the application to Firebase will allow study materials to be updated without requiring users to install a new version of the application.

---

# What I Learned

Developing DMCampus taught me that building software is not only about writing code.

The biggest challenge was designing a data structure that could remain simple while supporting future expansion.

Throughout development I learned how to:

- Design reusable Flutter widgets.
- Organize projects using a feature-based structure.
- Separate UI from application data.
- Design flexible models instead of hardcoded logic.
- Manage Flutter assets correctly.
- Open local PDF files from within a Flutter application.
- Refactor code as requirements evolved.

Perhaps the most valuable lesson was understanding that good software architecture often comes from simplifying the design rather than adding more technologies.

---

# How to Run

Clone the repository:

```bash
git clone https://github.com/ahmedashraf-dmc/DMCampus.git
```

Navigate to the project:

```bash
cd DMCampus/app
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

---

# AI Assistance

During the development of this project, I used ChatGPT as an AI programming assistant.

ChatGPT was primarily used to discuss design decisions, review code, identify bugs, and suggest improvements. All architectural decisions, implementation, testing, debugging, and final integration were completed and verified by me.

---

# About the Author

Ahmed Ashraf

GitHub:
https://github.com/ahmedashraf-dmc

---

# Acknowledgements

This project was developed as the **CS50x Final Project** for Harvard University's **CS50: Introduction to Computer Science**.

The project represents the knowledge and experience gained throughout the course while solving a real problem encountered during university studies.

Although it satisfies the CS50 final project requirements, development will continue beyond the course with the goal of becoming a practical tool for students.

---

This repository contains the source code submitted for the CS50x Final Project and will continue to be maintained as an active personal project.
