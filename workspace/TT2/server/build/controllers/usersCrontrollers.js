"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class UsersCrontroller {
    index(req, res) {
        res.send('Usersssss');
    }
}
const usersCrontroller = new UsersCrontroller();
exports.default = usersCrontroller;
