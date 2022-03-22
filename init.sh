a2enmod rewrite && a2enmod ssl && a2enmod socache_shmcb
sed -i '/SSLCertificateFile.*snakeoil\.pem/c\SSLCertificateFile \/etc\/ssl\/certs\/apac.mecchelp.local.crt' /etc/apache2/sites-available/default-ssl.conf && sed -i '/SSLCertificateKeyFile.*snakeoil\.key/cSSLCertificateKeyFile /etc/ssl/private/apac.mecchelp.local.key\' /etc/apache2/sites-available/default-ssl.conf
a2ensite default-ssl
# apt-get update && apt-get upgrade -y