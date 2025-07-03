from flask import Flask
import datetime, socket

app = Flask(__name__)

@app.route("/")
def home():
    return f"""
    <h1> AutoDeploy Lite</h1>
    <p>Status: <b>Running</b></p>
    <p>Server: <b>{socket.gethostname()}</b></p>
    <p>Time: {datetime.datetime.now()}</p>
    """

@app.route("/health")
def health():
    return "OK", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
