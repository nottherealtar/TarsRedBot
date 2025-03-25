FROM python:3.11-slim-buster

WORKDIR /app

# Copy the requirements folder
COPY requirements ./requirements

# Install dependencies from base.txt
RUN pip install --no-cache-dir -r requirements/base.txt

# Copy the rest of the application
COPY . .

CMD ["python", "-m", "redbot"]
