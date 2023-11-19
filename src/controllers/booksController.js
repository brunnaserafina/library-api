import connection from "../databases/pgsql.js";
import { STATUS_CODE } from "../enums/statusCode.js";

export async function getBooks(_req, res) {
  try {
    const books = await connection.query(
      "SELECT livros.*, autores.nome AS autor, categorias.nome AS categoria FROM livros INNER JOIN autores ON livros.autor_id = autores.id INNER JOIN categorias ON livros.categoria_id = categorias.id;"
    );

    const refinedBooks = books.rows.map((book) => {
      const { autor_id, categoria_id, ...refinedBook } = book;
      return refinedBook;
    });

    return res.status(STATUS_CODE.OK).send(refinedBooks);
  } catch (err) {
    console.error(err);
    return res.sendStatus(STATUS_CODE.SERVER_ERROR);
  }
}

export async function postBook(req, res) {
  try {
    const { titulo, capa, autor, categoria_id } = req.body;
    let autor_id;

    const autorExistente = await connection.query(
      "SELECT id FROM autores WHERE nome = $1;",
      [autor]
    );

    if (autorExistente.rows.length > 0) {
      autor_id = autorExistente.rows[0].id;
    } else {
      const novoAutor = await connection.query(
        "INSERT INTO autores (nome) VALUES ($1) RETURNING id;",
        [autor]
      );
      autor_id = novoAutor.rows[0].id;
    }

    await connection.query(
      "INSERT INTO livros (titulo, capa, autor_id, categoria_id) VALUES ($1, $2, $3, $4);",
      [titulo, capa, autor_id, categoria_id]
    );

    return res.sendStatus(STATUS_CODE.CREATED);
  } catch (err) {
    console.error(err);
    return res.sendStatus(STATUS_CODE.SERVER_ERROR);
  }
}

export async function deleteBook(req, res) {
  try {
    const livroId = req.params.id;

    await connection.query("DELETE FROM livros WHERE id = $1;", [livroId]);

    return res.sendStatus(STATUS_CODE.OK);
  } catch (err) {
    console.error(err);
    return res.sendStatus(STATUS_CODE.SERVER_ERROR);
  }
}

export async function putStatusBook(req, res) {
  try {
    const livroId = req.params.id;

    const livro = await connection.query('SELECT disponivel FROM livros WHERE id = $1;', [livroId]);

    if (livro.rows.length === 0) {
      return res.status(STATUS_CODE.NOT_FOUND).send('Livro não encontrado.');
    }

    const novoStatus = !livro.rows[0].disponivel;

    await connection.query('UPDATE livros SET disponivel = $1 WHERE id = $2;', [novoStatus, livroId]);

    return res.sendStatus(STATUS_CODE.OK);
  } catch (err) {
    console.error(err);
    return res.sendStatus(STATUS_CODE.SERVER_ERROR);
  }
}
