# Etape 1: Build
FROM nginx:alpine

# Copier les fichiers statiques
COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exposer le port
EXPOSE 80

# Demarrer nginx
CMD ["nginx", "-g", "daemon off;"]