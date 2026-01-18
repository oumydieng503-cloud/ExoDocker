FROM alpine:latest
RUN echo "Image buildée avec succès" > /success.txt
CMD cat /success.txt && echo "Image: mon-app-docker:1.0.0"