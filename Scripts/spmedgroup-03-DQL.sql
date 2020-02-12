USE SpMedGroup;
GO

SELECT COUNT(IdUsuario) as QuantidadeUsuario FROM Usuario;

SELECT Paciente.Nome,CONVERT(VARCHAR(10), Paciente.DataNascimento, 101) AS DataNascimento FROM Paciente;

SELECT FLOOR(DATEDIFF(DAY,Paciente.DataNascimento, GETDATE()) / 365.25) AS Idade FROM Paciente