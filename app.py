from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify(message=' Hello world! my name is Hakim'), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
