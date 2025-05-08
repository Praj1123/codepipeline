# Use a Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the Flask application
CMD ["python", "app.py"]
