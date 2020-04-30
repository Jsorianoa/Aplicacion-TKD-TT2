const express = require ('express');
const morgan = require ('morgan');
const path = require ('path');
//inicializaciones 

const app = express();

//configuraciones

app.set('port', process.env.PORT || 4000);

// Middleware funciones que se ejecutan cada que se hace una peticion 
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));
app.use(express.json());
//variables globales

app.use((req, res, next) => {
    next();
});
//rutas 
app.use(require('./routes'));
app.use(require('./routes/authentication'));
app.use(require('./routes/links'));

// archivos publicos
app.use(express.static(path.join(__dirname, 'public')));

//iniciar el servidor

app.listen(app.get('port'), () => {
    console.log('Server On Port', app.get('port'));
});
