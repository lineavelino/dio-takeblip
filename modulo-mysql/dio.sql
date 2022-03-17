CREATE TABLE pessoa (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoa (nome, nascimento) VALUES ('Nathally', '1990-05-22')
INSERT INTO pessoa (nome, nascimento) VALUES ('Aline', '1993-06-18')
INSERT INTO pessoa (nome, nascimento) VALUES ('André', '1988-12-02')
INSERT INTO pessoa (nome, nascimento) VALUES ('Marcela', '2000-04-05')

SELECT * FROM pessoa
SELECT nome FROM pessoa
SELECT nome,nascimento FROM pessoa

UPDATE pessoa SET nome='Nathally Souza' 
-- muda todas as linhas da coluna nome para Nathally Souza
UPDATE pessoa SET nome='Aline' WHERE id=2 
UPDATE pessoa SET nome='André' WHERE id=3
UPDATE pessoa SET nome='Marcela' WHERE id=4

DELETE FROM pessoa WHERE id=3

SELECT * FROM pessoa ORDER BY nome
SELECT * FROM pessoa ORDER BY nome DESC

ALTER TABLE pessoa ADD genero VARCHAR(1) NOT NULL AFTER nascimento

UPDATE pessoa SET genero='F' WHERE id=1;
UPDATE pessoa SET genero='F' WHERE id=2;
UPDATE pessoa SET genero='F' WHERE id=4;
UPDATE pessoa SET genero='M' WHERE id=5;

SELECT COUNT(genero), genero FROM pessoa GROUP BY genero;