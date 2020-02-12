CREATE DATABASE SpMedGroup;
GO

USE SpMedGroup;
GO

CREATE TABLE EnderecoClinica (
	IdEnderecoClinica	INT PRIMARY KEY IDENTITY,
	Estado				VARCHAR(200) NOT NULL,
	Cidade				VARCHAR(200) NOT NULL,
	Rua					VARCHAR(300) NOT NULL
);
GO

CREATE TABLE Clinica (
	IdClinica			INT PRIMARY KEY IDENTITY,
	NomeFantasia		VARCHAR(200) NOT NULL,
	CNPJ				VARCHAR(20) NOT NULL,
	RazãoSocial			VARCHAR(200) NOT NULL,
	HorarioAbertura		TIME NOT NULL,
	HorarioFechamento	TIME NOT NULL,
	IdEnderecoClinica	INT FOREIGN KEY REFERENCES EnderecoClinica(IdEnderecoClinica)
);
GO

CREATE TABLE Especialidade (
	IdEspecialidade		INT PRIMARY KEY IDENTITY,
	TituloEspecialidade	VARCHAR(200) NOT NULL
);
GO

CREATE  TABLE TipoAcesso (
	IdTipoAcesso		INT PRIMARY KEY IDENTITY,
	TituloTipoAcesso	VARCHAR(200) NOT NULL
);
GO

CREATE TABLE Usuario (
	IdUsuario			INT PRIMARY KEY IDENTITY,
	Email				VARCHAR(200) NOT NULL,
	Senha				VARCHAR(200) NOT NULL,
	IdTipoAcesso		INT FOREIGN KEY REFERENCES TipoAcesso(IdTipoAcesso)
);
GO

CREATE TABLE Medico (
	IdMedico			INT PRIMARY KEY IDENTITY,
	CRM					VARCHAR(200) NOT NULL,
	Nome				VARCHAR(200) NOT NULL,
	IdEspecialidade		INT FOREIGN KEY REFERENCES Especialidade(IdEspecialidade),
	IdUsuario			INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdClinica			INT FOREIGN KEY REFERENCES Clinica(IdClinica)
);
GO

CREATE TABLE Administrador (
	IdAdministrador		INT PRIMARY KEY IDENTITY,
	IdUsuario			INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);
GO

CREATE TABLE EnderecoPaciente(
	IdEnderecoPaciente	INT PRIMARY KEY IDENTITY,
	Estado				VARCHAR(200) NOT NULL,
	Cidade				VARCHAR(200) NOT NULL,
	Bairro				VARCHAR(200) NOT NULL,
	Rua					VARCHAR(300) NOT NULL,
	CEP					VARCHAR(300) NOT NULL
);
GO


CREATE TABLE Paciente(
	IdPaciente			INT PRIMARY KEY IDENTITY,
	Nome				VARCHAR(200) NOT NULL,
	DataNascimento		Date NOT NULL,
	Telefone			VARCHAR(20) NOT NULL,
	RG					VARCHAR(20) NOT NULL,
	CPF					VARCHAR(20) NOT NULL,
	IdUsuario			INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdEnderecoPaciente	INT FOREIGN KEY REFERENCES EnderecoPaciente(IdEnderecoPaciente)
);
GO

CREATE TABLE Situacao(
	IdSituacao			INT PRIMARY KEY IDENTITY,
	TituloSituacao		VARCHAR(20) NOT NULL
);
GO


CREATE TABLE Consulta(
	IdConsulta			INT PRIMARY KEY IDENTITY,
	DataConsulta		DATE NOT NULL,
	HoraConsulta		TIME NOT NULL,
	IdPaciente			INT FOREIGN KEY REFERENCES Paciente(IdPaciente),
	IdMedico			INT FOREIGN KEY REFERENCES Medico(IdMedico),
	IdSituacao			INT FOREIGN KEY REFERENCES Situacao(IdSituacao)
);
GO
