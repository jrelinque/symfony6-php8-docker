# A bastinazo Symfony 6 / PHP 8 docker from Cádiz

Thanks to the current code from repository, we'll get a bunch of dockers with:
 
 * **PHP 8.1:**
 * **Symfony 6**
 * **MySQL**
 * **PhpMyAdmin**
 
But, first of all, you'll need:
 
 * **Docker and docker-compose:** All the provided infrastructure to work locally is based on containers and docker-compose.
 * **Make:** In order to help and to unify, we use Make (via [Makefile](Makefile)) with the basic docker-compose commands (build, up) but indicating the needed parameters. Performing the command *make help* you will see all the possibilities:
     ```

Make it simple. The only things you have to execute is:
    
    jrelinque@ws-jrelinque: **make build**
    jrelinque@ws-jrelinque: **make up**
    jrelinque@ws-jrelinque: make shell-php
    php: symfony new .

info: jrelinque@emergya.com    