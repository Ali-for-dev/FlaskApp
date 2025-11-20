# Utiliser une image Python officielle
FROM python:3.13

# Définir le dossier de travail
WORKDIR /app

# Copier les dépendances et les installer
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copier le reste du code
COPY . .

# Spécifier le port
EXPOSE 5000

# Commande pour lancer l'application
CMD ["python", "app.py"]