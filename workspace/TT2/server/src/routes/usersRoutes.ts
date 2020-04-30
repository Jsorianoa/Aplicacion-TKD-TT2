import { Router } from 'express';
import usersController from '../controllers/usersController';

class UsersRoutes {

    router: Router = Router();

    constructor() {
        this.config();
    }

    config()  {
        this.router.get('/user', usersController.list);
        this.router.get('/user :No_boleta', usersController.getOne);
        this.router.post('/user', usersController.create);
        this.router.put('/user :No_boleta', usersController.update);
        this.router.delete('/user :No_boleta', usersController.delete);
    }

}

export default new UsersRoutes().router;
  