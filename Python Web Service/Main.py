from flask import Flask, request, Response

app = Flask("Proyecto1")

@app.route('/usuario',methods = ['POST'])
def mensaje():
	return "Brayan Aroche"

@app.route('/conectado', methods =['GET'])
def conectado():
	return "201503918"

if __name__ == "__main__":
  app.run(debug=True, host='127.0.0.1')