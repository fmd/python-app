import os
import lazyconf
from flask import Flask

app = Flask(__name__)

base_dir = os.path.dirname(os.path.dirname(__file__))
lazy = lazyconf.Lazyconf().load(base_dir)

@app.route('/')
def hello_world():
    return '<h1>Hello World!</h1>'

if __name__ == '__main__':
    app.run(host=lazy.get('host'))
