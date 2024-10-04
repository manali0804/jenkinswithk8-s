from flask import Flask, request, render_template

app = Flask(__name__)


@app.route('/')
def index():
    return render_template("login.html")


@app.route('/login', methods=['GET', 'POST'])
def login():
    error = None
    if request.method == 'POST':
        if request.form['uname'] != 'admin' or request.form['psw'] != 'admin':
            error = 'Invalid Credentials. Please try again.'
        else:
            return render_template('home.html')
    return render_template('login.html', error=error)


@app.route('/departments')
def departments():
    return render_template('departments.html')

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True, port=5000)
