FROM python:3.12-slim

WORKDIR /app

RUN useradd -m -u 1000 appuser
USER appuser

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "-m", "app.main"]