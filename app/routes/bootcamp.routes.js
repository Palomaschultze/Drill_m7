import express from "express";

import{
    createBootcamp,
    addUser,
    findById,
    findAll
    
} from "../controllers/bootcamp.controller.js"

const router = express.Router();
router.post("/", createBootcamp);
router.post("/asociar", addUser);
router.get("/:id", findById);
router.get("/", findAll);

export default router;