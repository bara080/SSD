# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /world

# Copy the requirements file
COPY requirements.txt /world/

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /world
COPY . /world

# Define environment variables
ENV FLASK_APP=app/main.py
ENV FLASK_ENV=production

# Expose the port Flask runs on
EXPOSE 80

# Run the application when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
