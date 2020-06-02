import { Request, Response } from "express";
import { connect } from "../database";
import { Alumno } from "../interfaces/alumno";

export async function getPosts(req:Request,res:Response):Promise<Response>{
   const conn = await connect();
   const posts = await conn.query('SELECT * FROM competidor');
   return res.json(posts[0]);
}

export async function createPost(req:Request, res:Response):Promise<Response>{
    //const newPost : Alumno = req.body;
    const conn = await connect();
    await conn.query('INSERT INTO competidor set ?', [req.body] );
    return res.json({
        message: 'Alumno Creado'
    });
}