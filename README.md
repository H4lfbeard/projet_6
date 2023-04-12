# projet_6
Project 6 from my Openclassrooms online formation

Installation :

This project has been developed under php 8.1 and symfony 5.3.
Start this project in localhost mode, run some command lines:

    clone the GitHub repo:

git clone https://github.com/sebzz07/snowtricks.git

    install dependencies with composer:

composer install

    install dependencies with npm (or yarn if you prefer) :

npm install

    run :

npm run build

    Create and fill out your own .env.*

    Create database and some fixtures via doctrine :

symfony console doctrine:database:create

symfony console make:migration

symfony console doctrine:migrations:migrate

symfony console doctrine:fixtures:load

    run local server :

symfony server:start -d

    run the asynchronous service to send mail :

symfony console messenger:consume async -vvv

Now the project is normally deploy correctly
Information to Test the project :
Two options :

use the accounts created with the fixtures:

user//123456

Or you can create your own account.

Thank you !
