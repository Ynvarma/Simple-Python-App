# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY . .
# Install the required Python packages
RUN pip install --no-cache-dir .

# Set the command to run your HTTP server when the container starts
CMD ["python", "app.py"]

