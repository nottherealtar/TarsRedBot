FROM python:3.10-slim

WORKDIR /app

COPY requirements/ ./requirements/

RUN pip install --no-cache-dir -r requirements/base.txt

COPY . .

ENV PYTHONUNBUFFERED=1

CMD ["python", "bot.py"]
