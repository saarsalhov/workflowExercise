# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY src/ ./src

# Default command (can be anything simple for now)
CMD ["python3", "-c", "from src.app import add; print(add(2,3))"]