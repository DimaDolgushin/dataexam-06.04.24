CREATE TABLE Patients (
id INT PRIMARY KEY,
first_name VARCHAR(50),
last name VARCHAR(50),
patronymic VARCHAR(50),
passport_number VARCHAR(20),
passport_series VARCHAR(10),
birth_date DATE,
gender VARCHAR(10),
address VARCHAR(100),
phone_number VARCHAR(15),
email VARCHAR(50),
medical_card_number VARCHAR(20),
medical_card_issue_data DATE,
last_visit_date DATE,
next_appointment_date DATE,
insurance_policy_number VARCHAR(20),
insurance_policy_expiry_date DATE
);

CREATE TABLE PatientContact (
id INT PRIMARY KEY,
patient_id INT,
adress VARCHAR(100),
phone_number VARCHAR(15),
email VARCHAR(50),
FOREIGN KEY (patient_id) REFERENCES
Patients(id)
);

CREATE TABLE PatientMedicalInfo (
id INT PRIMARY KEY,
patient_id INT,
medical_card_number VARCHAR(20),
medical_card_issue_data DATE,
last_visit_date DATE,
next_appointment_date DATE,
insurance_policy_number VARCHAR(20),
insurnce_policy_expire_data DATE,
FOREIGN KEY (patient_id) REFERENCES
Patients(id)
);

CREATE TABLE MedicalProcedures (
id INT PRIMARY KEY,
patient_id INT,
procedure_date DATE,
doctor_name VARCHAR(50),
procedure_type VARCHAR(50),
procedure_name VARCHAR(50),
procedure_results VARCHAR(50),
procedure_price DECIMAL(10,2)
FOREIGN KEY (patient_id) REFERENCES
Patients(id)
);

INSERT INTO Patients (id, first_name, last_name, patronymic, passport_number, passport_series, birth_date, gender, address, phone_number, email, medical_card_number, medical_card_issue_data, last_visit_date, next_appointment_date, insurance_policy_number, insurance_policy_expiry_date)
VALUES
(1, 'Иван', 'Иванов', 'Иванович', '123456', 'AB2134, '1980-05-15', 'Мужской', 'ул.Куйбышева 90', '+79032156038', 'ivanov12@mail.ru', 'M123', '2021-01-01', '2021-10-20', '2022-01-10, '444555', '2023-06-30' );
(2 'Анна', 'Иванова', 'Ивановна', '213456, 'CB1264', '1981-10-20 'Женский', 'ул. Виноградова 5', '+79054235017', 'annaiva213@mail.ru', 'M345', 2021-01-10', '2022-10-15', '2023-03-12', '321442', '2024-02-30');
(3, 'Сергей', 'Ковалев', 'Сергеевич', '213445, 'AB1234', '1990-05-10', 'Мужской', 'ул. Мира 1', '+79032134560', 'sergo1234@mail.ru, 'M231', '2020-05-03', '2021-01-10', '2023-10-12', '421412', '2025-10-10');
(4, 'Дмитрий' 'Королев', 'Александрович', '223444', 'CB4321', '1989-10-10', 'Мужской', 'ул. Кинотеатр 2', '+79022145670', 'abcdssa@mail.ru', 'M654', '2020-06-03', '2021-01-12', '2023-02-10','213456', '2024-03-01'),
(5, 'Екатерина', 'Котова', 'Алексеевна', '555333' , 'AB6342', '1993-05-06', 'Женский', 'ул. Пролетарская 3, '+79032153450', 'ekatert@mail.ru', 'M986', '2020-05-03', '2021-03-03', '2023-01-10, '987654', '2023-10-10'),
(6, 'Николай', 'Ковалев', 'Николаевич',  '444333', 'CB1234', '1993-10-15', 'Мужской', 'ул. Юбилейная 5, '+79011234567', 'nikolate@mail.ru', 'M267', '2020-01-02','2023-10-03', '2024-01-10', '2134854, '2023-11-11'),
(7, 'Ирина', 'Ковалев', 'Николаевна',  '111222', 'CB4567', '1992-05-05', 'Женский', 'ул. Иванова 5, '+79013456789', 'iorirdkd@mail.ru', 'M101', '2020-03-02','2023-05-03', '2024-03-10', '2311232', '2023-12-12'),
(8, 'Илья', 'Неизвестный', 'Иванов',  '222111', 'AB9123', '1991-03-15', 'Мужской', 'ул. Рокосовсская 5, '+7902223345', 'ilya10101@mail.ru', 'M421', '2020-02-02','2023-09-03', '2024-02-02', '9876543, '2023-01-10'),
(9, 'Артем', 'Кузнецов', 'Сергеевич',  '321234', 'AB2134', '1988-09-11', 'Мужской', 'ул. Глазная 6, '+79053214567', 'kuznterjd@mail.ru', 'M222', '2020-01-02','2023-04-03', '2024-05-02', '2134567, '2022-01-10'),
(10, 'Руслан', 'Смирнов', 'Андреевич',  '999888', 'AB5553', '1978-03-12', 'Мужской', 'ул. Мирная 10, '+79052223145', 'smirnov1@mail.ru', 'M333', '2020-03-04','2023-06-09', '2024-01-10', '7865432, '2022-05-15');

INSERT INTO PatientContact (id, patient_id, address, phone_number, email)
VALUES
(1, 1, 'ул.Куйбышева 90', '+79452341010', 'dbarkdksd@mail,ru),
(2, 2, 'ул.Сталинград 45', '+79452341010', 'kanekiqqe@mail,ru'),
(3, 3, 'ул.Мира 3', '+79032143221', 'ichigo1@mail,ru);

INSERT INTO PatientMedialInfo (id, patient_id, medical_card_number, medical_card_issue_data, last_visit_date, next_appointment_date, insurance_policy_number, insurnce_policy_expire_data)
VALUES
(1, 1, '2021-10-20, '2021-10-20', '2022-01-10', '555777', '2023-06-30')
(2, 2, '2021-05-25, '2021-03-20', '2022-01-10', '111222', '2023-10-05')
(3, 3, '2021-03-10, '2021-05-05', '2022-03-10', '222333', '2023-10-03');

INSERT INTO Medical Procedure (id, patient_id, procedure_data, doctor_name, procedure_type, procedure_name, procedure_results, procedure_price)
VALUES
(1, 1, '2021-10-20 'Доктор Иванова', 'Кардиология', 'Обнаружено аритмия', '100'),
(2,2 '2021-08-30', 'Доктор Петров', 'УЗИ', 'УЗИ брюшной полости', 'Нет паталогий', '80'),
(3, 3, '2021-06-10, 'Доктор Сидорова','Неврология', 'МРТ головного мозга', 'Обнаружены изменения в мозге', '120'),
(4, 4, '2021-01-25, 'Доктор Ковалев', 'Эндокринология', 'Анализ гормонов', 'Обнаружен дисбаланс', '95'),
(5, 5 '2021-02-20', 'Доктор Смирнова', 'Терапия', 'Общий анализ крови', 'Нормальный анализ', '60');



