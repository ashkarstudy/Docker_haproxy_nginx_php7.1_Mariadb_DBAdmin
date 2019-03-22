FROM nginx:latest
MAINTAINER Ashkar
RUN apt-get update && apt-get install -y --no-install-recommends curl vim && apt-get clean
EXPOSE 80
HEALTHCHECK --interval=15s --retries=5 --timeout=30s --start-period=30s CMD curl --fail http://localhost:80/ || exit 1 

