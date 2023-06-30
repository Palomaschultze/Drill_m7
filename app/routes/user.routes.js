import express from "express";
import{
    createUser,
    findUserById,
    findAll,
    updateUserById,
    changeStatus,
    deleteUserById
} from "../controllers/user.controller.js"

const router = express.Router();
router.post("/", createUser);
router.get("/:id", findUserById);
router.get("/", findAll);
router.put("/:id", updateUserById)
router.delete("/:id", changeStatus)
router.delete("/destroy/:id", deleteUserById)


export default router;