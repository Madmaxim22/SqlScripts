CREATE TABLE PERSONS(
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR(20),
    city_of_living VARCHAR(255),
    CONSTRAINT staff_chk_phone CHECK (phone_number REGEXP '[+]?[0-9]{1,3} ?\\(?[0-9]{3}\\)? ?[0-9]{2}[0-9 -]+[0-9]{2}'),
    PRIMARY KEY (name, surname, age)
);

INSERT INTO PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Максим', 'Ткачук', 60, '+79159554378', 'Москва'),
('Сергей', 'Петров', 28, '+79153611873', 'Северск'),
('Георгий', 'Критко', 34, '+79311647903', 'Саратов'),
('София', 'Понаморева', 25, '+75513890021', 'Петрозаводск'),
('Владимир', 'Спиридонов', 45, '+71398271322', 'Кисловодск');