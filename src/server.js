import express from "express";
import cors from "cors";

import booksRouter from "./routers/booksRouter.js";

const server = express();

server.use(cors());
server.use(express.json());

server.use(booksRouter);

server.listen(4000, () => console.log("Listening on port 4000"));
