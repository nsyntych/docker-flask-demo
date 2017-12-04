from flask import Flask, request
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!, This is a simple Flask app running on %s" % request.host

if __name__ == "__main__":
    app.run(host="0.0.0.0")
