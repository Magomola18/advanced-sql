--****PLEASE ENTER YOUR DETAILS BELOW****
--T1-ml-schm.sql

--Student ID: 28851447
--Student Name: KARABO MAGOMOLA
--Tutorial No:1

/* Comments for your marker:




*/

-- 1.1 Add Create table statments for the Missing TABLES below
-- Ensure all column comments, and constraints (other than FK's)
-- are included. FK constraints are to be added at the end of this script

-- BOOK_COPY
CREATE TABLE book_copy(
branch_code NUMBER(2) NOT NULL,
bc_id NUMBER(6) NOT NULL,
bc_purchase_price NUMBER(7,2) NOT NULL,
bc_counter_reserve CHAR(1),
book_call_no VARCHAR(20)
);

-- LOAN
CREATE TABLE loan(
branch_code NUMERIC(2) NOT NULL,
bc_id NUMERIC(6) NOT NULL,
loan_date_time DATE,
loan_due_date DATE,
loan_actual_return_date DATE,
bor_no NUMERIC(6) NOT NULL
);

-- RESERVE
CREATE TABLE reserve(
reserve_id NUMBER(6) NOT NULL,
branch_code NUMBER(2) NOT NULL,
bc_id NUMBER(6) NOT NULL,
reserve_date_time_placed DATE,
bor_no NUMBER(6)
);


-- Add all missing FK Constraints below here
ALTER TABLE loan
    ADD CONSTRAINT loan_borrower FOREIGN KEY ( bor_no )
        REFERENCES borrower ( bor_no );
        
ALTER TABLE reserve
    ADD CONSTRAINT reserve_borrower FOREIGN KEY ( bor_no )
        REFERENCES borrower ( bor_no );




COMMIT;