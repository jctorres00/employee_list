== README
 
 This README would normally document whatever steps are necessary to get the
 application up and running.
 
 
 
 * Get the Source Code
 
     clone the project from github
         git clone https://github.com/jctorres00/employee_list.git
 
     navegate to the dir
         cd employee_list/
 
 * System dependencies
     mysql
     ruby on rails 5.0
 
 * Configuration
     install missing gems
         bundle install
 
 
 
 * Database creation
 
     log in to mysql as root
         mysql -u root -p
 
 
     Create db's
 
         CREATE DATABASE employee_list_development;
         CREATE DATABASE employee_list_test;
         GRANT ALL PRIVILEGES ON employee_list_development.* TO 'rails_user'@'localhost' IDENTIFIED BY 'secretpassword';
         GRANT ALL PRIVILEGES ON employee_list_test.* TO 'rails_user'@'localhost' IDENTIFIED BY 'secretpassword';
 
 
 * Database initialization
     create migrations
         rails db:migrate
 
     run server
         rails s
 
 
     go to the browser and enter this
         http://localhost:3000/
 
 
 
 * How to run the test suite
 
 * Services (job queues, cache servers, search engines, etc.)
 
 * Deployment instructions
