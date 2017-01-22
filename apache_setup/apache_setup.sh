#!/bin/sh

# Run the apace container and copy a simple homepage to the default location and expose port 80
echo "Starting apache..."
docker run --name apache -v $PWD/content/:/usr/local/apache2/htdocs/:ro -d -p 8080:80 httpd:2.4

