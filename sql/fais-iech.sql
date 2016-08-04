#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: users
#------------------------------------------------------------

CREATE TABLE users(
        idUser       int (11) Auto_increment  NOT NULL ,
        userName     Varchar (50) NOT NULL ,
        email        Varchar (255) NOT NULL ,
        lat          Double NOT NULL ,
        lon          Double NOT NULL ,
        activeSaloon Int ,
        registration Datetime NOT NULL ,
        PRIMARY KEY (idUser )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: saloons
#------------------------------------------------------------

CREATE TABLE saloons(
        idSaloon int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        color    Varchar (7) ,
        claimed  Datetime NOT NULL ,
        idUser   Int NOT NULL ,
        PRIMARY KEY (idSaloon )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: messages
#------------------------------------------------------------

CREATE TABLE messages(
        idMessage int (11) Auto_increment  NOT NULL ,
        content   Text NOT NULL ,
        creation  Datetime NOT NULL ,
        idSaloon  Int NOT NULL ,
        PRIMARY KEY (idMessage )
)ENGINE=InnoDB;

ALTER TABLE saloons ADD CONSTRAINT FK_saloons_idUser FOREIGN KEY (idUser) REFERENCES users(idUser);
ALTER TABLE messages ADD CONSTRAINT FK_messages_idSaloon FOREIGN KEY (idSaloon) REFERENCES saloons(idSaloon);