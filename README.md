# ClinicPortal

## Description

**ClinicPortal** is a web-based application built using Ruby on Rails. It serves as a management system for clinics, allowing doctors and receptionists to manage patient information efficiently. The system includes authentication for both doctors and receptionists and allows for patient CRUD operations as well as displaying patient data in a graphical format.

## Features

- User authentication (Doctors and Receptionists)
- CRUD operations for managing patient records
- Dashboard for doctors to view registered patients
- Dashboard for receptionists to register new patients
- Graphical representation of patient registrations (using Chartkick)
- Secure login and logout functionality

## Technologies Used

- **Ruby on Rails** (Backend framework)
- **PostgreSQL** (Database)
- **Devise** (User authentication)
- **Chartkick & Chart.js** (Graphical charts)
- **Bootstrap** (UI styling)

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/clinic_portal.git
   cd clinic_portal
   Install dependencies:
   ```

Run the following command to install all required gems:

bash
Copy code
bundle install
Set up the database:

Make sure PostgreSQL is installed and running on your machine. Then, create and migrate the database:

bash
Copy code
rails db:create
rails db:migrate
rails db:seed
Run the application:

Start the Rails server with:

bash
Copy code
rails server
Visit http://localhost:3000 in your browser.

Usage
Login Credentials:
Receptionist:

Email: receptionist@example.com
Password: password
Doctor:

Email: doctor@example.com
Password: password
Features Overview:
Receptionist Dashboard:

Register new patients
View list of all patients
Doctor Dashboard:

View patient list
View daily patient registration chart
Development
Setting up a local development environment
Clone the repository and set up dependencies as described above.
Create a .env file for environment variables like database credentials if needed.
Running Tests
You can run the tests with:

bash
Copy code
rails test
