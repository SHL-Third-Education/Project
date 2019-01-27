from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def index():
	return 'Hello Server'

@app.route('/speed/<v>')
def recv(v):
	return 'Hello: %s' % v

if __name__ == '__main__':
	app.run(debug=True, host='0.0.0.0')
