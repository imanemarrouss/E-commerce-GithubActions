# Étape 1 : Base Python
FROM python:3.10-slim

# Étape 2 : Définir le répertoire de travail
WORKDIR /e-commerce


COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


COPY . .


EXPOSE 5000
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]


