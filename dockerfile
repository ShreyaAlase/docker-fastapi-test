# Use an official Python runtime as a parent image
FROM python:3.12.4

# Set the working directory in the container
WORKDIR /the/workdir/path

# Copy requirements.txt into the container at /the/workdir/path
COPY requirements.txt ./

# Install dependencies listed in requirements.txt
RUN pip install --no-cache-dir --no-deps -r requirements.txt

# Copy the rest of the application code into the container at /the/workdir/path
COPY . .

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]