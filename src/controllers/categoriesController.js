import connection from "../databases/pgsql.js";
import { STATUS_CODE } from "../enums/statusCode.js";

export async function getCategories(_req, res) {
  try {
    const categories = await connection.query(
      "SELECT id, nome AS categoria FROM categorias;"
    );

    return res.status(STATUS_CODE.OK).send(categories.rows);
  } catch (err) {
    console.error(err);
    return res.sendStatus(STATUS_CODE.SERVER_ERROR);
  }
}
