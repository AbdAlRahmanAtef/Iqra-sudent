CREATE DATABASE IF NOT EXISTS quran_tracker;
USE quran_tracker;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS sessions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_hijri VARCHAR(255) NOT NULL,
    date_gregorian DATE NOT NULL,
    student_name VARCHAR(255) NOT NULL,
    new_lesson TEXT,
    review TEXT,
    level VARCHAR(50),
    review_level VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert default students if they don't exist
INSERT IGNORE INTO students (name) VALUES ('Ibrahim'), ('Ismail');
