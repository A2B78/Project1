# Utiliser une image Node.js légère
FROM node:alpine

# Installer les paquets nécessaires
RUN apk --no-cache add nodejs npm

# Copier les fichiers nécessaires dans l'image
COPY package.json /app/package.json
COPY tuxsay.js /app/tuxsay.js

# Définir le répertoire de travail
WORKDIR /app

# Installer les dépendances
RUN npm install

# Commande par défaut pour l'exécution de l'image
CMD ["node", "tuxsay.js", "Hello, Tux!"]

