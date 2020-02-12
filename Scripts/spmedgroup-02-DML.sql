USE SpMedGroup;
GO

INSERT INTO EnderecoClinica (Estado,Cidade,Rua)
VALUES	('SP','São Paulo', 'Av. Barão Limeira, 532');
GO

INSERT INTO Clinica (NomeFantasia,CNPJ,RazãoSocial,HorarioAbertura,HorarioFechamento,IdEnderecoClinica)
VALUES	('Clinica Possarle ','86400902000130', 'SP Medical Group','08:00','16:00',1);
GO

INSERT INTO Especialidade (TituloEspecialidade)
VALUES	('Acupuntura'),('Anestesiologia'),('Angiologia'),('Cardiologia'),('Cirurgia Cardiovascular'),('Cirurgia da Mão'),('Cirurgia do Aparelho Digestivo'),('Cirurgia Geral'),('Cirurgia Pediátrica'),('Cirurgia Plástica'),('Cirurgia Torácica'),('Cirurgia Vascular'),('Dermatologia'),('Radioterapia'),('Urologia'),('Pediatria'),('Psiquiatria');
GO

INSERT INTO TipoAcesso(TituloTipoAcesso)
VALUES	('Administrador'),('Medico'),('Paciente');
GO

INSERT INTO Usuario(Email,Senha,IdTipoAcesso)
VALUES	('Admin@admin.com','Admim123',1),
		('ricardo.lemos@spmedicalgroup.com.br','ricando123',2),
		('roberto.possarle@spmedicalgroup.com.br','roberto123',2),
		('helena.souza@spmedicalgroup.com.br','helena123',2),
		('ligia@gmail.com','ligia123',3),
		('alexandre@gmail.com','alexandre123',3),
		('fernando@gmail.com','fernando123',3),
		('henrique@gmail.com','henrique123',3),
		('joao@hotmail.com','joao123',3),
		('bruno@gmail.com','bruno543',3),
		('mariana@outlook.com','mariana643',3);
GO

INSERT INTO Medico(CRM,Nome,IdEspecialidade,IdClinica,IdUsuario)
VALUES	('54356-SP','Ricardo Lemos',2,1,2),
		('53452-SP','Roberto Possarle',17,1,3),
		('65463-SP','Helena Strada',16,1,4);
GO

INSERT INTO Administrador(IdUsuario)
VALUES	(1);
GO

INSERT INTO EnderecoPaciente(Estado,Cidade,Bairro,Rua,CEP)
VALUES	('SP','São Paulo','','Rua Estado de Israel 240','04022-000'),
		('SP','São Paulo',' Bela Vista','Av. Paulista, 1578 ','01310-200'),
		('SP','São Paulo','Indianópolis','Av. Ibirapuera - Indianópolis, 2927',' 04029-200'),
		('SP','Barueri','Vila Sao Jorge','R. Vitória, 120 ','06402-030'),
		('SP','Ribeirão Pires','Santa Luzia','R. Ver. Geraldo de Camargo, 66 ','09405-380'),
		('SP','São Paulo','Indianópolis','Alameda dos Arapanés, 945','04524-001'),
		('SP','Barueri','Vila Universal','R Sao Antonio, 232','06407-140');
GO

INSERT INTO Paciente(Nome,DataNascimento,Telefone,RG,CPF,IdEnderecoPaciente,IdUsuario)
VALUES	('Ligia','13/10/1983','11 3456-7654','43522543-5','94839859000',1,5),
		('Alexandre','23/07/2001','11 98765-6543','32654345-7','73556944057',2,6),
		('Fernando','10/10/1978','11 97208-4453','54636525-3','16839338002',3,7),
		('Henrique','13/10/1985','11 3456-6543','54366362-5','14332654765',4,8),
		('João','27/08/1975','11 7656-6377','32544444-1','91305348010',5,9),
		('Bruno','21/03/1972','11 95436-8769','54566266-7','79799299004',6,10),
		('Mariana','05/03/2018','','54566266-8','13771913039',7,11);
GO

INSERT INTO Situacao(TituloSituacao)
VALUES	('Agendada'),('Realizada'),('Cancelada');

INSERT INTO Consulta(IdPaciente,IdMedico,DataConsulta,HoraConsulta,IdSituacao)
VALUES	(7,3,'20/01/2020','15:00',2),
		(2,2,'06/01/2020','10:00',3),
		(3,2,'07/02/2020','11:00',2),
		(2,2,'06/02/2018','10:00',2),
		(4,1,'07/02/2019','11:00',3),
		(7,3,'08/03/2020','15:00',1),
		(4,1,'09/03/2020','11:00',1);
GO




SELECT * from EnderecoClinica;
SELECT * from Clinica;
SELECT * from Especialidade;
SELECT * from TipoAcesso;
SELECT * from Usuario;
SELECT * from Medico;
SELECT * from Administrador;
SELECT * from EnderecoPaciente;
SELECT * from Paciente;
SELECT * from Situacao;
SELECT * from Consulta;