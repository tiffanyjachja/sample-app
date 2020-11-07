#!flask/bin/python
from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    timestamp = datetime.now()
    return jsonify({'message': "Automate all the things!", 'timestamp': timestamp
                    })


if __name__ == '__main__':
    app.run(host='0.0.0.0')
