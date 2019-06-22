from flask import Flask
app = Flask(__name__)

# Creataing the default route
@app.route('/')
def index():
   return '<html><body><h1>Hello World</h1></body></html>'

# Registering the blueprint template
from flaskdemo.blueprintdemo.bluePrintController import bluePrintView
app.register_blueprint(bluePrintView)
