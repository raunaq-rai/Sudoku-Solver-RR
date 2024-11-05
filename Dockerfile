# Dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY src/ ./src
COPY tests/ ./tests
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD ["python", "src/solver.py"]
