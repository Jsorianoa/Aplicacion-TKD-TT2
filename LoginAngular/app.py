from flask import Flask, render_template, redirect, request, url_for, session, jsonify
from flask_cors import CORS
from flaskext.mysql import MySQL 
#from flask.ext.bcrypt import Bcrypt 


app = Flask(__name__)


app.config['MYSQL_HOST']= 'localhost'
app.config['MYSQL_USER']= 'root'
app.config['MYSQL_PASSWORD']= 'deicide14'
app.config['MYSQL_DB']='interpolitecnico'
app.config['MYSQL_CURSORCLASS']='DictCursor'

mysql = MySQL()
mysql.init_app(app)
CORS(app)

@app.route('/api/tasks', methods=['GET'])
def get_all_tasks():
    cursor = mysql.get_db.cursor()
    cursor.execute("SELECT * FROM competidor")
    rv = cursor.fetchall()
    return jsonify(rv)

#@app.route('/login', methods=["GET","POST"])
#def login():
 #   if request.method == "POST":
  #      No_boleta = request.form['usuario']

   #     cur = mysql.connect.cursor(MySQL.cursors.DictCursor)
    #    cur.execute("SELECT * FROM competidor WHERE No_boleta=%s",(No_boleta,))
     #   user=cur.fetchone()
      #  cur.close()

       # if len(user)>0:
        #    return render_template("login.component.html")

if __name__ == '__main__':
    #app.secret_key = "012#!ApaAjaBoleh)(*^%"
    app.run(debug=True)