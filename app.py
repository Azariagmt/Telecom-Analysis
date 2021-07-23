from flask import Flask, request, render_template
from flask_cors import CORS

app = Flask(__name__)


@app.route('/')
def home():
    return render_template('index.html')

@app.route('/experience')
def experience():
    return render_template('experience.html')

@app.route('/engagement')
def engagement():
    return render_template('engagement.html')

@app.route('/dashboard')
def dashboard():
    return 'Dashboard page'

if __name__ == '__main__':
    os.environ.setdefault('Flask_SETTINGS_MODULE', 'helloworld.settings')
    app.run(debug=True)