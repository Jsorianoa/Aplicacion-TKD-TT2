import { createPool } from "mysql2/promise";

export async function connect(){
    const conecction = await createPool({
        host:'localhost',
        user: 'root',
        password: 'deicide14',
        database: 'interpolitecnico',
        connectionLimit: 10
    });
    return conecction;
}