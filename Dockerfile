# Use an official Python runtime as a base image
FROM python:3.8-slim

# Copy all the filed in the flask-app directory in to the root directory in the container
COPY flask-app/ /

# Install the python requirements
RUN pip install --no-cache-dir -r requirements.txt

# Flask runs on port 5000 and it needs to be exposed outside the container
EXPOSE 5000

# The command to run the Flask application when the container starts
CMD ["python3", "./wsgi.py"]