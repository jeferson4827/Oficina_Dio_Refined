-- Alimentando as Tabelas da Oficina
show databases;
use oficina;
show tables;


-- Tabela Cliente
desc Customer;
select * from Customer;
insert into Customer (CPF, Contact, Address) values(12345678910, 9962988, 'Rua Amazonas,65 Niteroi-RJ'),
												(10987654321, 73814827, 'Rua Acre,66 Pirai-RJ'),
												(15987654321, 40395297, 'Rua Zizo, 77 Aruja-SP'),
												(12345678918, 74328252, 'Rua Parana, 55 Cotia-SP');

-- Tabela Veiculo OS
desc Vehicle_OS;
select * from Vehicle_OS;
insert into Vehicle_OS (Model, Placa, Ano, Vehicle_condition, OS_customer) 
				values('Celta','HIJ-9876','2006','Avaria Leve','1'),
				      ('Virtus', 'HJF-4567', '2020', 'Batido', '1'),
					  ('Up', 'FGL-1234', '2021', 'Usado', '2'),
					  ('Uno', 'ALI-4343', '1991', 'Batido', '3'),
					  ('Fusca', 'QWE-0908', '1984', 'Novo', '4');
                    

				
-- Tabela mecanico
desc mechannic_team;
select * from mechannic_team;
insert into Mechannic_team(Especialidade, Address, Mec_service, Mec_Customer) 
						values ('Carro novo', 'Rua Delta,55 Jarinu-SP',13, 2),
								('Carro velho', 'Rua Delta,77 Jarinu-SP', 17, 2),
								('Qualquer carro', 'Rua Paralelo,5 Jarinu-SP', 18, 4),
                                ('Qualquer carro', 'Rua Paralelo,5 Jarinu-SP', 15, 1);
                                
                                
                                
 -- Tabela OS
select * from OS;
desc OS;
insert into os (OS_DESCRIPTION) values ('Limpeza do carro'),
										('Barulho motor'),
                                        ('Alinhamento de rodas'),
                                        ('Eletrica'),
                                        ('Balanceamento');


-- Tabela Servico
desc service;
select * from service;
insert into service (Service_type, Prazo, S_Value, Scustomer) 
			values('Maintenance', '2024-10-31', 1500.00, 1),
				('Recall', '2023-10-31', 0, 1),
                ('Maintenance', '2023-12-05', 600.00, 2),
                ('Maintenance','2024-02-02', 250.00, 2),
                ('Maintenance','2024-02-02', 300.00, 3),
                ('Recall', '2024-02-09', 0, 4);



-- Tabela Pagamento
desc payment;
select * from payment;
insert into payment(Pay_method, POS, PService, PCustomer) 
						values ('Cash', 2, 13, 2),
							('Credit Card', 3, 17, 2),
							('Bank Transfer', 4, 18, 4),
							('Cash', 2, 15, 1);
                            
                            
                            
                            
