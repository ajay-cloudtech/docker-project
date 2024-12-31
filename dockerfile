# Using official python runtime as base image
# The base image provides the Python runtime and essential tools needed for Python development.
FROM Python:3.12-rc-bookworm

# set the working directory in the container to /app
# All subsequent commands (like file copying, installing packages) will be executed relative to this directory.
WORKDIR /app

# Copy current drectory contents (from host system) into container at /app directory
COPY . /app

# Install required packages
# --no-cache-dir option prevents caching, reducing image size by not storing unnecessary files.
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variable for Flask
# tells Flask which Python file contains the application instance (app) that Flask should run.
ENV FLASK_APP=app.py

# Run command to start flask application
CMD ["flask", "run", "--host=0.0.0.0"]