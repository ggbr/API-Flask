from flask import Flask

app = Flask(__name__)


@app.route('/')
def home():
    return "papapap 2"


app.run(debug=True)