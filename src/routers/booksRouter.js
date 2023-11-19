import express from "express";
import {
  getBooks,
  postBook,
  deleteBook,
  putStatusBook,
} from "../controllers/booksController.js";

const router = express.Router();

router.get("/books", getBooks);
router.post("/books", postBook);
router.delete("/books/:id", deleteBook);
router.put("/books/:id", putStatusBook);
router.get("/status", (_req, res) => res.status(200).send("ok!"));

export default router;
