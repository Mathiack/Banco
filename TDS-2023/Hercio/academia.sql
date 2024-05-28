create table chad(ID_Chad int auto_increment PRIMARY KEY,
                 nome varchar(255),
              	 idade int,
                 peso double,
                 sexo varchar (255),
                 pr double);

create table Treinador (ID_Treinador int AUTO_INCREMENT PRIMARY KEY,
                       ID_Chad int, FOREIGN KEY (ID_Chad) REFERENCES chad(ID_Chad),
                       avaliacao double);

CREATE TABLE Funcionario (ID_Funcionario int AUTO_INCREMENT PRIMARY KEY,
                         cargo varchar(255),
                         idade int,
                         sexo varchar(255));

create table Reservas (ID_Reserva int AUTO_INCREMENT PRIMARY KEY,
                       ID_Membro_Reservado int,
                       FOREIGN KEY (ID_Membro_Reservado) REFERENCES chad(ID_Chad),
                       ID_Treinador int,
                       FOREIGN KEY (ID_Treinador) REFERENCES treinador(ID_Treinador),
                       ID_Equipamento int,
                       FOREIGN KEY (ID_Equipamento) REFERENCES equipamento(ID_Equipamento));

create table Equipamento (ID_Equipamento int AUTO_INCREMENT PRIMARY KEY,
                       	ID_Treinador int,
                       	FOREIGN KEY (ID_Treinador) REFERENCES treinador(ID_Treinador),
                        nome varchar(255),
                        utilidade varchar(255));

create table pagamento (ID_Pagamento int AUTO_INCREMENT PRIMARY KEY,
                        ID_Chad int,
                        FOREIGN KEY (ID_Chad) REFERENCES chad(ID_Chad),
                       mes int,
                       valor double);

create table Aula (ID_Aula int AUTO_INCREMENT PRIMARY KEY,
                  ID_Chad int,
                   FOREIGN KEY (ID_Chad) REFERENCES chad(ID_Chad),
                  ID_Treinador int,
                   FOREIGN KEY (ID_Treinador) REFERENCES treinador(ID_Treinador),
                  ID_Equipamento int,
                  FOREIGN KEY (ID_Equipamento) REFERENCES equipamento(ID_Equipamento));