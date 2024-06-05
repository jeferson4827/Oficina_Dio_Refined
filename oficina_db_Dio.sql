-- Database para uma Oficina
SHOW DATABASES;
DROP DATABASE oficina;
CREATE DATABASE IF NOT EXISTS oficina;
USE oficina;
SHOW TABLES;


-- Tabela Cliente
CREATE TABLE Customer(
					idCustomer INT AUTO_INCREMENT PRIMARY KEY,
                    CPF CHAR(11) NOT NULL UNIQUE,
                    Contact INT UNIQUE,
                    Address VARCHAR(150)
					);
                    
                    
                        
-- Tabela Veiculo
CREATE TABLE Vehicle_OS(
						idVehicle_OS INT AUTO_INCREMENT PRIMARY KEY,
                        Model VARCHAR(80) NOT NULL,
                        Placa VARCHAR(25),
                        Ano YEAR,
                        Vehicle_condition VARCHAR(100),
                        OS_customer INT NOT NULL,
                        CONSTRAINT fk_Vehicle_OS FOREIGN KEY (OS_customer) REFERENCES Customer(idCustomer)
                        );



-- Tabela Servico
CREATE TABLE Service(
					idService INT AUTO_INCREMENT PRIMARY KEY,
                    Service_type ENUM('Recall', 'Maintenance') NOT NULL DEFAULT 'Maintenance',
                    Prazo DATE,
                    S_Value FLOAT NOT NULL,
                    Scustomer INT,
                    CONSTRAINT fk_Customer FOREIGN KEY (Scustomer) REFERENCES Customer(idCustomer)
					);
                    


-- Creating Tabela Mecanico
CREATE TABLE Mechannic_team(
							idMechannic_team INT AUTO_INCREMENT PRIMARY KEY,
                            Especialidade VARCHAR(50) NOT NULL,
                            Address VARCHAR(45),
                            Mec_service INT NOT NULL,
                            Mec_Customer INT NOT NULL,
                            CONSTRAINT fk_mec_service FOREIGN KEY (Mec_service) REFERENCES Service(idService),
                            CONSTRAINT fk_mec_customer FOREIGN KEY (Mec_Customer) REFERENCES Customer(idCustomer)
                            );



-- Tabela OS
CREATE TABLE OS(
				idOS INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                OS_Description VARCHAR(100) NOT NULL
                );             
                    
                    
                    
-- Tabela Pagamento
CREATE TABLE Payment(
					idPayment INT AUTO_INCREMENT PRIMARY KEY,
					Pay_method ENUM('Credit Card', 'Bank Transfer', 'Cash') NOT NULL DEFAULT 'Cash',
                    POS INT NOT NULL,
					PService INT NOT NULL,
					PCustomer INT NOT NULL,
					CONSTRAINT fk_payment_os FOREIGN KEY (POS) REFERENCES OS(idOS),
					CONSTRAINT fk_payment_service FOREIGN KEY (PService) REFERENCES Service(idService),
                    CONSTRAINT fk_payment_customer FOREIGN KEY (PCustomer) REFERENCES Customer(idCustomer)
					);
				
                

                    
                    
                    
                    
                    
                    