-- Tabela Cont
CREATE TABLE Cont (
    id_cont INT PRIMARY KEY,
    Rol VARCHAR(50),
    Username VARCHAR(50),
    Parola VARCHAR(50)
);

-- Tabela Utilizator
CREATE TABLE Utilizator (
    id_utilizator INT PRIMARY KEY,
    id_cont INT,
    Nume VARCHAR(50),
    -- Alte coloane pentru datele bancare pot fi ad?ugate aici
    FOREIGN KEY (id_cont) REFERENCES Cont(id_cont)
);

-- Tabela Player
CREATE TABLE Player (
    id_player INT PRIMARY KEY,
    id_cont INT,
    Nume VARCHAR(50),
    Joc VARCHAR(50),
    Rank_maxim INT,
    FOREIGN KEY (id_cont) REFERENCES Cont(id_cont)
);

-- Tabela Joc
CREATE TABLE Joc (
    id_joc INT PRIMARY KEY,
    Nume_joc VARCHAR(50)
);

-- Tabela Rank
CREATE TABLE Rank (
    id_rank INT PRIMARY KEY,
    Nume_rank VARCHAR(50),
    id_joc INT,
    FOREIGN KEY (id_joc) REFERENCES Joc(id_joc)
);

-- Tabela Tranzactii
CREATE TABLE Tranzactii (
    id_tranzactii INT PRIMARY KEY,
    id_utilizator INT,
    id_player INT,
    Detalii TEXT,
    -- Alte detalii despre plat? pot fi ad?ugate aici
    FOREIGN KEY (id_utilizator) REFERENCES Utilizator(id_utilizator),
    FOREIGN KEY (id_player) REFERENCES Player(id_player)
);