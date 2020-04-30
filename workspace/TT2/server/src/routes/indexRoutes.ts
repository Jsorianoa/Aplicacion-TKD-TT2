import { Router } from 'express';
import { indexController } from '../controllers/indexController';


class IndexRoutes {

    public router: Router = Router();

    constructor() {
        this.config();
    }

    config():void  {
        this.router.get('/index', indexController.index);
    }

}

const usersRoutes = new IndexRoutes();
export default usersRoutes.router;         