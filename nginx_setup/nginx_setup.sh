#!/bin/sh

# Run the nginx container and copy a simple homepage to the default location and expose port 80
echo "Starting nginx..."
docker run --name nginx -v $PWD/content:/usr/share/nginx/html:ro -d -p 8080:80 nginx

