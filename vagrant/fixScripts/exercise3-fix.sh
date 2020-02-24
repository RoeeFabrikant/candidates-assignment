#!/bin/bash
#add fix to exercise3 here

# Allow permission for access Apache web page

sudo sed -i "s/deny from all/Allow from all/g" /etc/apache2/sites-available/default

# Restart Apache web services

sudo service apache2 restart &> /dev/null

# Now try to refresh your browser

echo 'Hello World'

