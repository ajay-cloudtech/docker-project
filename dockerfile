# Using official python runtime as base image
# The base image provides the Python runtime and essential tools needed for Python development.
FROM Python:3.12-rc-bookworm

# set the working directory in the container to /app
# All subsequent commands (like file copying, installing packages) will be executed relative to this directory.
WORKDIR /app

<<<<<<< Updated upstream
# Copy current drectory contents (from host system) into container at /app directory
COPY . /app

# Install required packages
# --no-cache-dir option prevents caching, reducing image size by not storing unnecessary files.
=======
# Copy the current directory contents (from host) into the container at /app
COPY . /app

# Install the required packages
# without caching to reduce image size
>>>>>>> Stashed changes
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variable for Flask
# tells Flask which Python file contains the application instance (app) that Flask should run.
ENV FLASK_APP=app.py

<<<<<<< Updated upstream
# Run command to start flask application
=======
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
>>>>>>> Stashed changes
CMD ["flask", "run", "--host=0.0.0.0"]