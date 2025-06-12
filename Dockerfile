# Use an official Python base image
FROM python:3.10-slim

# Set working directory in container
WORKDIR /app

# Copy the app code into the container
COPY app.py /app

# Install Flask
RUN pip install --no-cache-dir flask

# Expose port 3000
EXPOSE 3000

# Run the application
CMD ["python", "app.py"]