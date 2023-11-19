import express from "express";
import cors from "cors";

import booksRouter from "./routers/booksRouter.js";
import categoriesRouter from "./routers/categoriesRouter.js";

const server = express();

server.use(cors());
server.use(express.json());

server.use(booksRouter);
server.use(categoriesRouter);

server.listen(4000, () => console.log("Listening on port 4000"));
