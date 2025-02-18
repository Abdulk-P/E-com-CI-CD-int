# Use official Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


# Copy the entire project
COPY . .

# Run migrations and start Django server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
