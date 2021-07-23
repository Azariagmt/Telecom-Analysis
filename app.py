from flask import Flask, request

app = Flask(__name__)


@app.route('/')
def home():
    return 'Home page'


@app.route('/dashboard')
def dashboard():
    return 'Dashboard page'

if __name__ == '__main__':
    os.environ.setdefault('Flask_SETTINGS_MODULE', 'helloworld.settings')
    app.run(debug=True)