import os
from flask import Flask
import socket

app = Flask(__name__)

@app.route("/")
def main():
    return "Welcome!"

@app.route('/how are you')
def hello():
    return 'I am good, how about you?'

if __name__ == "__main__":
    hostname = socket.gethostname()
#     app.run()
    app.run(host=hostname, port=8080)
