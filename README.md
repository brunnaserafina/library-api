<h1 align="left">API Biblioteca</h1>

###

<p align="left">Esta é uma API (Application Programming Interface) de um site que mostra os livros disponíveis de uma biblioteca. Confira também o front-end da aplicação em 'https://github.com/brunnaserafina/library'</p>

###

### ⚙️ Funcionalidades

- Listar todos os livros
- Inserir um livro novo
- Deletar um livro
- Editar o status de um livro
- Listar todas as categorias de livros

</br>

### 📄 Documentação da API

##### LISTAR LIVROS:

```http
  GET /books
```

--

##### INSERIR LIVRO:

```http
  POST /books
```

- Body:

| Parâmetro      | Tipo     | Descrição                         |
| :------------- | :------- | :-------------------------------- |
| `titulo`       | `string` | `Título do livro`                 |
| `autor`        | `string` | `Autor do livro`                  |
| `capa`         | `string` | `Link da imagem da capa do livro` |
| `categoria_id` | `number` | `ID da categoria do livro`        |

--

##### DELETAR UM LIVRO:

```http
  DELETE /books/${ID_DO_LIVRO}
```

--

##### EDITAR STATUS DE UM LIVRO:

```http
  PUT /books/${ID_DO_LIVRO}
```

--

##### LISTAR CATEGORIAS:

```http
  GET /categories
```

--
</br>

### ▶️ Rodando a aplicação

1. Certifique-se de ter o Node.js e o PostgreSQL instalados em seu sistema.

- **Node.js:** Se você ainda não tem o Node.js instalado, pode baixar a versão mais recente em [nodejs.org](https://nodejs.org/).
- **PostgreSQL:** Para instalar o PostgreSQL, siga as instruções no site oficial do PostgreSQL [postgresql.org](https://www.postgresql.org/). Para facilitar seu uso, recomenda-se a utilização do pgadmin.

2. Clone este repositório em um pasta de sua preferência:

```bash
  $ git clone https://github.com/brunnaserafina/library-api.git
```

3. Instale suas depêndencias:

```bash
  $ npm i
```

4. Crie um banco de dados local, você pode utilizar o pgAdmin para facilitar e utilize o arquivo dump.sql que está na raíz do projeto para popular o banco;

5. Configure o arquivo .env na raiz do projeto com a variável de ambiente DATABASE_URL. Adicione a URL de conexão do seu banco de dados PostgreSQL:

```bash
  DATABASE_URL=postgres://seu_usuario:senha@localhost:5432/nome_do_seu_banco_de_dados
```

6. Inicie a aplicação na raíz do projeto:

```bash
  $ npx nodemon src/server.js
```

7. A api estará rodando localmente! Agora o front-end já pode se conectar à ela.
   </br>

### 🛠️ Tecnologias utilizadas

 <img align="left" alt="node" height="30px" src="https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white" />

 <img align="left" alt="express" height="30px" src="https://img.shields.io/badge/express.js-%23404d59.svg?style=for-the-badge&logo=express&logoColor=%2361DAFB" />
  <img align="left" alt="postgres" height="30px" src="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white" />


</br>
</br>

### Autores:

Grupo 23:

- Brunna Serafina da Silva
- Emerson Cristian Vilanova Da Silva
- Filipe Dos Santos Moura
- João Gabriel Santos Naves
- Leonardo Ferraz David
- Lucas Roberto De Castro
- Matheus Adelino Aleixo Da Silva
