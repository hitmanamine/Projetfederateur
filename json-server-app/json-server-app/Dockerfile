# Utiliser l'image clue/json-server
FROM clue/json-server
 
# Copier le fichier db.json dans le container
COPY db.json /data/db.json
 
# Lancer json-server en surveillant le fichier db.json
CMD ["--watch", "/data/db.json"]

