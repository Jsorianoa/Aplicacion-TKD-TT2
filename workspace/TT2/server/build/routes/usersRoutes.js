"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const usersController_1 = __importDefault(require("../controllers/usersController"));
class UsersRoutes {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/user', usersController_1.default.list);
        this.router.get('/user :No_boleta', usersController_1.default.getOne);
        this.router.post('/user', usersController_1.default.create);
        this.router.put('/user :No_boleta', usersController_1.default.update);
        this.router.delete('/user :No_boleta', usersController_1.default.delete);
    }
}
exports.default = new UsersRoutes().router;
