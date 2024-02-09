from flask import Flask

def create_app():
    app = Flask(__name__)

    # Configuration settings, routes, middleware, etc. can be added here
    @app.route("/")
    def hello_world():
        return "<p>Hello, World!</p>"

    @app.route("/health")
    def health():
        return "ok"

    return app

if __name__ == "__main__":
    app = create_app()
    app.run(host='0.0.0.0')


