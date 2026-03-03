CREATE TABLE orders (
    id SERIAL,
    code VARCHAR(20) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    total_amount NUMERIC(10, 2) NOT NULL CHECK (total_amount >= 0) DEFAULT 0.00,
    paid BOOLEAN NOT NULL DEFAULT FALSE,
    customer_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers ON DELETE RESTRICT
);