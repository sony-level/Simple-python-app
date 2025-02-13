#Utilistaion d'une image Node.js prete a l'emploi depuis docker

FROM python:3.13.2-slim

#Definir le reprtoir de travail duans le contenuer 

LABEL version="Exam_Rattrapage" maintainer="level sony <sony-dilane-level.mbango@ise.yncrea.fr>" 


WORKDIR /src
 
COPY src /app/src

COPY requirements.txt /app/requirements.txt

#Instalasion des dependances 

RUN pip install --upgrade pip && \
	pip install --no-cache-dir -r /app/requirements.txt 

#copie le reste des fichier

COPY . .

ENV APP_INSTANCE myapp

#Exposition du port 

EXPOSE 8080

#Commande pour executer l'application lorsque le conteneur va se demarrer 

CMD ["python", "./src/app.py"]
