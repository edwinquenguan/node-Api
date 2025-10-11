
        DROP DATABASE IF EXISTS db_node;
    
        CREATE SCHEMA db_node DEFAULT CHARACTER SET utf8 ;
        USE db_node;
    
     CREATE TABLE users (
          id INT AUTO_INCREMENT PRIMARY KEY,
          name VARCHAR(100) NOT NULL,
          lastname VARCHAR(100) NOT NULL,
              email VARCHAR(150) NOT NULL UNIQUE,
              password VARCHAR(255) NOT NULL,
              phone VARCHAR(20),
              image VARCHAR(255),
              role VARCHAR(20),
          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
              updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        ) ENGINE=InnoDB;
        
        INSERT INTO users VALUES (
              null,
              "Albeiro",
              "Ramos",
              "profealbeiro2020@gmail.com",
              "$2b$10$NR8eRuuAB12JoHe81ZYnG.i2/5k/D5TKrxc7Pk74W4rgzADdABM9G",
              "3103103101",
                           "profile",
                           "admin",
                           null,
                           null
        );
