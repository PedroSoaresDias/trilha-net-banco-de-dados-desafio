-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ao
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados Após o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- 6 - Buscar os filmes com duração maior que 100 e menor que 150, ordenado pela duração em ordem crescente
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao ASC;

-- 7 - Buscar a quantidade de filmes lançados no ano, agrupados por ano, ordenando pela duração em ordem decrescente
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero
FROM Filmes as F
INNER JOIN Generos as G ON F.Id = G.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero 
FROM Filmes as F
INNER JOIN Generos as G ON F.Id = G.Genero WHERE G.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, P.Papel
FROM Filmes as F
INNER JOIN Atores as A ON F.Id = A.Id
INNER JOIN ElencoFilme as P ON F.Id = P.Id