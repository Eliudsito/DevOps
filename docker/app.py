from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "empresa": "Soluciones Tecnologicas del Futuro",
        "status": "running",
        "version": "1.0.0",
        "fecha": datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    })

@app.route('/health')
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=False)
