"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const database_1 = __importDefault(require("../database"));
class UsersController {
    list(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            const usr = yield database_1.default.query('SELECT * FROM competidor');
            res.json(usr);
        });
    }
    getOne(req, res) {
        res.json({ text: 'obteniendo un usuario' + req.params.id });
    }
    create(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            yield database_1.default.query('INSERT INTO competidor set ?', [req.body]); //Insertar un nuevo usuario
            res.json({ message: 'usuario creado' });
        });
    }
    update(req, res) {
        res.json({ text: 'actualizando usuario' + req.params.id });
    }
    delete(req, res) {
        res.json({ text: 'eliminando usuario' + req.params.id });
    }
}
const usersCrontroller = new UsersController();
exports.default = usersCrontroller;
