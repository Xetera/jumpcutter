from flask import Flask, request
app = Flask(__name__)

@app.route("/")
def hello():
  url = request.args.get('url')
  print(url)
  return "Hello World!"

