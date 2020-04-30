import { Request, Response } from 'express';
import  pool from '../database';




class UsersController {

    

    public async list (req:Request, res:Response){
        var usr = await pool.query('SELECT No_boleta FROM competidor');
        console.log(usr);
        
    } 

    public async getOne (req:Request, res:Response):Promise<void> {
        const {No_boleta} = req.params;
        const users = await pool.query('SELECT * FROM competidor WHERE No_boleta = ?', [No_boleta]);
        console.log(users); 
        res.json({text: 'obteniendo un usuario'});
    }

    public async create (req:Request, res:Response):Promise<void> { //El metodo async await es para ejecutar la primera linea y despues la segunda
        await pool.query('INSERT INTO competidor set ?',[req.body]); //Insertar un nuevo usuario
        res.json({message: 'usuario creado'})
    }

    public update (req:Request, res:Response) {
        res.json({text: 'actualizando usuario' + req.params.id})
    }

    public delete (req:Request, res:Response) {
        res.json({text: 'eliminando usuario' + req.params.id})
    }
}

const usersCrontroller = new UsersController;
 export default usersCrontroller;