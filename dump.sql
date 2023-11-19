-- Tabela 'categorias' para armazenar as categorias dos livros
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255)
);

-- Tabela 'autores' para armazenar informações dos autores
CREATE TABLE autores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255)
);

-- Tabela 'livros' para armazenar informações dos livros
CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255),
    capa VARCHAR(255),
    autor_id INTEGER REFERENCES autores(id),
    categoria_id INTEGER REFERENCES categorias(id),
    disponivel BOOLEAN DEFAULT TRUE
);

-- Populando tabela autores
INSERT INTO autores (id, nome) VALUES
(1, 'Ariano Suassuna'),
(2, 'José de Alencar'),
(3, 'Machado de Assis'),
(4, 'Lewis Carroll'),
(5, 'Aluísio Azevedo'),
(6, 'Manuel Antônio de Almeida'),
(7, 'Antoine de Saint-Exupéry'),
(8, 'Oscar Wilde'),
(9, 'Daniel Defoe'),
(10, 'Heloisa Prieto / Gilberto Dimenstein'),
(11, 'Jonathan Swift'),
(12, 'Leandro Narloch'),
(13, 'Zuenir Ventura'),
(14, 'Joaquim Nabuco'),
(15, 'Sérgio Buarque de Holanda'),
(16, 'Elio Gaspari'),
(17, 'Rita Lee'),
(18, 'Walter Isaacson'),
(19, 'Fernando Morais'),
(20, 'Louis Fischer'),
(21, 'Danuza Leão'),
(22, 'Regina Zappa'),
(23, 'Regina Echeverria'),
(24, 'Khaled Hosseini'),
(25, 'John Grogan'),
(26, 'John Green'),
(27, 'George Orwell'),
(28, 'Alexandre Dumas'),
(29, 'Jane Austen');

-- Populando tabela categorias
INSERT INTO categorias (id, nome) VALUES
(1, 'Literatura brasileira'),
(2, 'Infanto-juvenil'),
(3, 'História do Brasil'),
(4, 'Biografia'),
(5, 'Literatura Estrangeira'),
(6, 'Outros');

--Populando tabela livros disponíveis
INSERT INTO livros (titulo, capa, autor_id, categoria_id) VALUES
('Memórias de um Sargento de Milícias', 'https://m.media-amazon.com/images/I/91+Cy1Yj4wL.jpg', 6, 1),
('Raízes do Brasil', 'https://m.media-amazon.com/images/I/91Tyq-pOAeL.jpg', 15, 3),
('Iracema', 'https://www.lpm.com.br/livros/imagens/iracema_9788525421814_9788525406835_hd.jpg', 2, 1),
('O Cortiço', 'https://m.media-amazon.com/images/I/81m1emiSp-S.jpg', 5, 1),
('O Pequeno Príncipe', 'https://m.media-amazon.com/images/I/81MscdgdwLL.jpg', 7, 2),
('O Fantasma de Canterville', 'https://m.media-amazon.com/images/I/51Amd6UfYTL.jpg', 8, 2),
('Robinson Crusoé', 'https://m.media-amazon.com/images/I/91EehIW3CzL.jpg', 9, 2),
('Mano Descobre a Ecologia', 'https://m.media-amazon.com/images/I/91wbVj2RZCL.jpg', 10, 2),
('Viagens de Gulliver', 'https://m.media-amazon.com/images/I/51gT1BfaamL.jpg', 11, 2),
('Guia Politicamente Incorreto da História do Brasil', 'https://m.media-amazon.com/images/I/61S0k9xoSsL._SX342_BO1,204,203,200_.jpg', 12, 3),
('Abolicionismo', 'https://m.media-amazon.com/images/I/81ZHk8CjpwL.jpg', 14, 3),
('A Ditadura Escancarada', 'https://m.media-amazon.com/images/I/310uirIEBBL._SX346_BO1,204,203,200_.jpg', 16, 3),
('Steve Jobs', 'https://m.media-amazon.com/images/I/81wbmWlRNEL.jpg', 18, 4),
('O Mago', 'https://m.media-amazon.com/images/I/41Zl3iua3cL.jpg', 19, 4),
('Gandhi', 'https://http2.mlstatic.com/D_NQ_NP_681494-MLB50111428542_052022-O.jpg', 20, 4),
('Quase Tudo - Memórias', 'https://m.media-amazon.com/images/I/71Ja9E3rIxL.jpg', 21, 4),
('Olga', 'https://m.media-amazon.com/images/I/816eq6OcZhL.jpg', 19, 4),
('Furacão Elis', 'https://m.media-amazon.com/images/I/51ptmPXcgHL.jpg', 23, 4),
('Marley & Eu', 'https://m.media-amazon.com/images/I/41QIcrrDHvL.jpg', 25, 5),
('A Revolução dos Bichos', 'https://m.media-amazon.com/images/I/91BsZhxCRjL.jpg', 27, 5),
('Os Três Mosqueteiros', 'https://m.media-amazon.com/images/I/817bVkQAWhL.jpg', 28, 5),
('Orgulho e Preconceito', 'https://m.media-amazon.com/images/I/61JosO2tkdL.jpg', 29, 6),
('Chico Buarque', 'https://m.media-amazon.com/images/I/515iXV-gUDL.jpg', 22, 4);

--Populando tabela livros indisponíveis
INSERT INTO livros (titulo, capa, autor_id, categoria_id, disponivel) VALUES
('Memórias de um Sargento de Milícias', 'https://m.media-amazon.com/images/I/91+Cy1Yj4wL.jpg', 6, 1, false),
('Alice no País das Maravilhas', 'https://m.media-amazon.com/images/I/81eAcV387dL.jpg', 4, 2, false),
('1968 o Ano Que Não Terminou', 'https://m.media-amazon.com/images/I/719PJ4MC9BL.jpg', 13, 3, false),
('Rita Lee - uma Autobiografia', 'https://m.media-amazon.com/images/I/A1KS6wOMXNL.jpg', 17, 4, false),
('O Caçador de Pipas', 'https://m.media-amazon.com/images/I/81yVzXTgLzL.jpg', 24, 5, false),
('A Culpa é das Estrelas', 'https://m.media-amazon.com/images/I/41MRMmeNz0L.jpg', 26, 5, false);
