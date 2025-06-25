CREATE DATABASE taxi_management;
USE taxi_management;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    phone VARCHAR(15)
);
CREATE TABLE taxis (
    taxi_id INT AUTO_INCREMENT PRIMARY KEY,
    driver_name VARCHAR(100),
    taxi_number VARCHAR(20),
    status VARCHAR(20) DEFAULT 'Available'
);
CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    taxi_id INT,
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100),
    status VARCHAR(20) DEFAULT 'Booked',
    booking_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (taxi_id) REFERENCES taxis(taxi_id)
);
INSERT INTO users (name, email, password, phone) VALUES
('Arun Kumar', 'arun1@example.com', 'pass123', '9876543211'),
('Priya Sharma', 'priya2@example.com', 'pass123', '9876543212'),
('Ravi R', 'ravi3@example.com', 'pass123', '9876543213'),
('Kavya M', 'kavya4@example.com', 'pass123', '9876543214'),
('Suresh R', 'suresh5@example.com', 'pass123', '9876543215'),
('Meena P', 'meena6@example.com', 'pass123', '9876543216'),
('Ajith K', 'ajith7@example.com', 'pass123', '9876543217'),
('Geetha R', 'geetha8@example.com', 'pass123', '9876543218'),
('Vinoth K', 'vinoth9@example.com', 'pass123', '9876543219'),
('Divya S', 'divya10@example.com', 'pass123', '9876543220'),
('Harish R', 'harish11@example.com', 'pass123', '9876543221'),
('Lavanya T', 'lavanya12@example.com', 'pass123', '9876543222'),
('Manoj R', 'manoj13@example.com', 'pass123', '9876543223'),
('Anjali S', 'anjali14@example.com', 'pass123', '9876543224'),
('Prakash V', 'prakash15@example.com', 'pass123', '9876543225'),
('Sindhu R', 'sindhu16@example.com', 'pass123', '9876543226'),
('Karthik D', 'karthik17@example.com', 'pass123', '9876543227'),
('Revathi R', 'revathi18@example.com', 'pass123', '9876543228'),
('Arvind R', 'arvind19@example.com', 'pass123', '9876543229'),
('Sneha P', 'sneha20@example.com', 'pass123', '9876543230');
INSERT INTO taxis (driver_name, taxi_number) VALUES
('Ravi K', 'TN01AB1001'),
('Kumar P', 'TN01AB1002'),
('Sathish M', 'TN01AB1003'),
('Mani T', 'TN01AB1004'),
('Siva K', 'TN01AB1005'),
('Arul D', 'TN01AB1006'),
('Ramesh S', 'TN01AB1007'),
('Vijay B', 'TN01AB1008'),
('Saravanan R', 'TN01AB1009'),
('Rajesh M', 'TN01AB1010'),
('Dinesh P', 'TN01AB1011'),
('Vignesh R', 'TN01AB1012'),
('Prabhu K', 'TN01AB1013'),
('Murali D', 'TN01AB1014'),
('Kannan V', 'TN01AB1015'),
('Ashok R', 'TN01AB1016'),
('Naveen S', 'TN01AB1017'),
('Bala M', 'TN01AB1018'),
('Gopi P', 'TN01AB1019'),
('Selva R', 'TN01AB1020');
INSERT INTO bookings (user_id, taxi_id, pickup_location, drop_location, status) VALUES
(1, 1, 'Chennai Central', 'T Nagar', 'Booked'),
(2, 2, 'Adyar', 'Velachery', 'Completed'),
(3, 3, 'Guindy', 'Tambaram', 'Booked'),
(4, 4, 'Koyambedu', 'Perungudi', 'Cancelled'),
(5, 5, 'Anna Nagar', 'Ambattur', 'Booked'),
(6, 6, 'Chrompet', 'Airport', 'Completed'),
(7, 7, 'Egmore', 'Besant Nagar', 'Booked'),
(8, 8, 'Nungambakkam', 'Taramani', 'Booked'),
(9, 9, 'Vadapalani', 'OMR', 'Booked'),
(10, 10, 'Kilpauk', 'Ashok Nagar', 'Completed'),
(11, 11, 'Mylapore', 'Guindy', 'Cancelled'),
(12, 12, 'Saidapet', 'Pallikaranai', 'Booked'),
(13, 13, 'Perambur', 'Thoraipakkam', 'Booked'),
(14, 14, 'Avadi', 'Kundrathur', 'Booked'),
(15, 15, 'T Nagar', 'Adambakkam', 'Completed'),
(16, 16, 'Kodambakkam', 'Velachery', 'Booked'),
(17, 17, 'Mandaveli', 'Siruseri', 'Cancelled'),
(18, 18, 'Ashok Pillar', 'Guindy', 'Booked'),
(19, 19, 'Medavakkam', 'Perungudi', 'Completed'),
(20, 20, 'Teynampet', 'OMR', 'Booked');
-- Add a status column to track taxi availability
ALTER TABLE taxis MODIFY COLUMN status VARCHAR(20) DEFAULT 'available';
SELECT * FROM taxis;






