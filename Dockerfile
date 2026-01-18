# Dockerfile minimal pour CI/CD lab
FROM ubuntu:22.04

# Installer quelques outils utiles pour debug
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Créer un message de test
RUN echo "Image Docker buildée avec succès" > /build-success.txt

# Afficher des infos au démarrage
CMD echo "🎉 Image: $IMAGE_NAME | Tag: $IMAGE_TAG" && \
    echo "📅 Build date: $(date)" && \
    cat /build-success.txt
