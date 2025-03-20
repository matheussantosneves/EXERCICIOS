CREATE DATABASE Universidade;
USE Universidade;

CREATE TABLE Estudante(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
curso VARCHAR(50),
idade INT,
nota_final DECIMAL(3.2)




);



INSERT INTO Estudante (nome,curso,idade,nota_final) VALUES
('Maria','Engenharia',19,100);



INSERT INTO Estudante (nome,curso,idade,nota_final) VALUES
('João','medicina',22,80);


INSERT INTO Estudante (nome,curso,idade,nota_final) VALUES
('Marlon','mecanica',18,40);


INSERT INTO Estudante (nome,curso,idade,nota_final) VALUES
('Ana','veterinaria',24,97);


INSERT INTO Estudante (nome,curso,idade,nota_final) VALUES
('Jessica','adiministração',18,100);

SELECT * FROM Estudante;

SELECT * FROM Estudante WHERE curso='Engenharia';

UPDATE Estudante
SET nota_final=100
WHERE id =3;


DELETE FROM Estudante WHERE id=5;

SELECT COUNT(*)
FROM Estudante;

SELECT AVG (nota_final) AS media_notas from Estudante;

SELECT idade
FROM Estudante
WHERE idade >21;

SELECT nome
FROM Estudante
ORDER BY nome;  


SELECT MAX(nota_final) AS nota_maxima

 FROM Estudante;



SELECT MIN(nota_final) AS nota_minima

 FROM Estudante;



SELECT nome, curso
FROM Estudante 
 ORDER BY nome;
 
 UPDATE Estudante
 SET curso = 'CORNO MANSO'
 WHERE id = 4;


  SELECT curso, COUNT(*) AS numero_de_estudante
FROM estudante
GROUP BY curso;


 SELECT id, nome, curso nota_final
 FROM Estudante
 WHERE nota_final > (SELECT AVG (nota_final)FROM Estudante);

DELETE FROM Estudante WHERE curso= "Engenharia"

DROP TABLE  Estudante;

DROP DATABASE Universidade;