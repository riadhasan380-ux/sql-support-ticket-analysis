CREATE DATABASE support_ticket_db;
USE support_ticket_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100),
    team VARCHAR(50),
    hire_date DATE
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50),
    sla_hours INT
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    agent_id INT,
    category_id INT,
    created_at DATETIME,
    first_response_at DATETIME,
    resolved_at DATETIME,
    priority VARCHAR(20),
    status VARCHAR(20),
    satisfaction_score INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (agent_id) REFERENCES agents(agent_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);