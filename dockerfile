# Use an official Python runtime as the base image
FROM python:3.12-rc-bookworm

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents (from host) into the container at /app
COPY . /app

# Install the required packages
# without caching to reduce image size
RUN pip install --no-cache-dir -r requirements.txt

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Add labels to the image
#Labels in Docker images are metadata used for various purposes
# Label formatting option 1
LABEL 'com.example.vendor'="Big Star Collectibles"
LABEL version="1.0"
LABEL description='The Big Star Collectibles Website \
usig python base image'

# Label formatting option 2
LABEL 'com.example.vendor'="Big Star Collectibles" version="1.0" description='The Big Star Collectibles Website \
usig python base image'

# Label formatting option 3
LABEL 'com.example.vendor'="Big Star Collectibles" \
version="1.0" \
description='The Big Star Collectibles Website \
usig python base image'

# Run the command to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]