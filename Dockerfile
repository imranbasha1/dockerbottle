# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /myapp
WORKDIR /myapp

# Copy the current directory contents into the container at /myapp
ADD . /myapp

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME SHASI

# Run app.py when the container launches
CMD ["python", "app.py"]
