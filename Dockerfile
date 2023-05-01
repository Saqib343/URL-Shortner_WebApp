FROM python:3.9-slim-buster

WORKDIR /app/URL-Shortner_WebApp

COPY . .

RUN pip install --no-cache-dir -r requirements.txt
RUN python -m pip install Django

ENV PYTHONPATH=/app/URL-Shortner_WebApp
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
