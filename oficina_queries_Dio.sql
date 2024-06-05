use oficina;

-- QUERIES
show tables;
select * from Customer;
select * from OS;
select * from Payment;
select * from Service;
select * from Vehicle_OS;
select * from mechannic_team;


-- Pagamento de Cliente com Nuemro OS
select * from Customer, Payment  where idCustomer=Pcustomer;
select CPF, Contact, Pay_method, POS from Customer, Payment  where idCustomer=Pcustomer;


-- Serviços relacionados a clientes com prazo
select * from Customer, Service where idCustomer=Scustomer ORDER BY idCustomer;
select Prazo, CPF, Contact, Address, Service_type, S_value 
				from Customer, Service 
                where idCustomer=Scustomer
                order by Prazo;

-- Prazos para 2024
select * from mechannic_team, service where mec_service = idservice having Deadline > '2023-12-31';
select Prazo, Especialidade, Service_type, S_value, Scustomer 
						from mechannic_team, service 
                        where Mec_service=idService 
                        having Prazo > '2024-12-31';
