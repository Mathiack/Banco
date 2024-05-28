create table abastecimento (ID_Abastecimento int AUTO_INCREMENT PRIMARY KEY,
                            ID_Veiculo int,
                            FOREIGN KEY (ID_Veiculo) REFERENCES veiculo(ID_Veiculo),
                            gasolinaLitro double,
                           	gasolinaTipo varchar(255),
                           	kmHodometro double,
                           	precoGasolina double,
                           	media double);
