import express from "express";
import usersRoutes from "./routes/user.routes.js"
import bootcampsRoutes from "./routes/bootcamp.routes.js"
const app = express();

app.use(express.json());


//definir rutas
app.use("/", (req, res) =>{
    res.send({
        message:'Bienvenido a la API Bootcamp'
    })
})
app.use("/api/v1/users", usersRoutes);
app.use("/api/v1/bootcamps", bootcampsRoutes);


export default app;