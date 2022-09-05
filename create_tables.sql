CREATE TABLE Inventory (
  car_id SERIAL,
  make VARCHAR(60),
  model VARCHAR(60),
  year INTEGER,
  cost NUMERIC(10,2),
  car_type INTEGER,
  PRIMARY KEY (car_id)
);

CREATE TABLE Salesman (
  salesman_id SERIAL,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  PRIMARY KEY (salesman_id)
);

CREATE TABLE Customer (
  customer_id SERIAL,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  PRIMARY KEY (customer_id)
);

CREATE TABLE Invoice (
  invoice_id SERIAL,
  customer_id INTEGER,
  salesman_id INTEGER,
  car_id INTEGER,
  total_cost NUMERIC(10,2),
  PRIMARY KEY (invoice_id),
  CONSTRAINT "FK_Invoice.customer_id"
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id),
  CONSTRAINT "FK_Invoice.car_id"
    FOREIGN KEY (car_id)
      REFERENCES Inventory(car_id),
  CONSTRAINT "FK_Invoice.salesman_id"
    FOREIGN KEY (salesman_id)
      REFERENCES Salesman(salesman_id)
);

CREATE TABLE Mechanic (
  mechanic_id SERIAL,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  PRIMARY KEY (mechanic_id)
);

CREATE TABLE Parts (
  part_id SERIAL,
  part_name VARCHAR(60),
  amount NUMERIC(6,2),
  instock INTEGER,
  PRIMARY KEY (part_id)
);

CREATE TABLE Service_Ticket (
  repair_id SERIAL,
  customer_id INTEGER,
  mechanic_id INTEGER,
  part_id INTEGER,
  car_id INTEGER,
  repair_cost NUMERIC(8,2),
  PRIMARY KEY (repair_id),
  CONSTRAINT "FK_Service Ticket.customer_id"
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id),
  CONSTRAINT "FK_Service Ticket.mechanic_id"
    FOREIGN KEY (mechanic_id)
      REFERENCES Mechanic(mechanic_id),
  CONSTRAINT "FK_Service Ticket.part_id"
    FOREIGN KEY (part_id)
      REFERENCES Parts(part_id),
  CONSTRAINT "FK_Service Ticket.car_id"
    FOREIGN KEY (car_id)
      REFERENCES Inventory(car_id)
);

CREATE TABLE Service_History (
  history_id SERIAL,
  repair_id INTEGER,
  car_id INTEGER,
  history_info VARCHAR(200),
  PRIMARY KEY (history_id),
  CONSTRAINT "FK_Service History.repair_id"
    FOREIGN KEY (repair_id)
      REFERENCES Service_Ticket(repair_id),
  CONSTRAINT "FK_Service History.car_id"
    FOREIGN KEY (car_id)
      REFERENCES Inventory(car_id)
);