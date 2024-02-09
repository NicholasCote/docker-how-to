# Import the flask python module
from flask import Flask, render_template

# Define the Flask constructor
app = Flask(__name__)

# The .route() function in flask is a decorator that tells the application what function to run when visiting certain URLs.
# This defines that when someone visits <URL>/ the hello_world application should run
@app.route('/')
def home():
    return render_template("home.html")

@app.route('/templates/navbar.html')
def navbar():
    return render_template('navbar.html')