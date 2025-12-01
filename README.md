# Quran Lesson Tracker

A complete system to track Quran lesson progress for students and generate daily/monthly reports.

## Project Structure

- `client/`: React frontend
- `server/`: Node.js + Express backend
- `schema.sql`: MySQL database schema

## Prerequisites

- Node.js (v14+)
- MySQL Server

## Setup Instructions

### 1. Database Setup

1.  Log in to your MySQL server.
2.  Run the contents of `schema.sql` to create the database and table.
    ```bash
    mysql -u root -p < schema.sql
    ```
    _(Or copy-paste the SQL into your preferred SQL client)_

### 2. Backend Setup

1.  Navigate to the server directory:
    ```bash
    cd server
    ```
2.  Install dependencies:
    ```bash
    npm install
    ```
3.  Configure environment variables:
    - Open `.env` and update `DB_PASSWORD` (and other fields if necessary) to match your MySQL configuration.
4.  Start the server:
    ```bash
    npm run dev
    ```
    The server will run on `http://localhost:5000`.

### 3. Frontend Setup

1.  Open a new terminal and navigate to the client directory:
    ```bash
    cd client
    ```
2.  Install dependencies:
    ```bash
    npm install
    ```
3.  Start the React app:
    ```bash
    npm run dev
    ```
4.  Open your browser at `http://localhost:5173`.

## Usage

1.  **Log Session**: Select a student (Ibrahim or Ismail), enter the lesson details, and click "Save Session".
2.  **Generate Reports**: Click "Generate Daily Report" or "Generate Monthly Report" to download the PDF.

## Features

- **Hijri Date**: Automatically calculated and saved.
- **PDF Reports**: Beautifully formatted tables using `pdfkit`.
- **Responsive UI**: Built with Tailwind CSS.
# Iqra-sudent
