"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class IndexCrontroller {
    index(req, res) {
        res.send('Hello');
    }
}
exports.indexController = new IndexCrontroller();
