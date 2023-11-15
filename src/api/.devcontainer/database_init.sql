CREATE DATABASE IF NOT EXISTS synergies;

USE synergies;

CREATE TABLE Playstyles (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL, 
    PRIMARY KEY (id)
);

CREATE TABLE Items (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Champions (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Augments (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ItemPlaystyleMappings (
    item_id MEDIUMINT NOT NULL,
    playstyle_id MEDIUMINT NOT NULL,
    weight INT NOT NULL,

    FOREIGN KEY(item_id)
        REFERENCES Items(id),

    FOREIGN KEY(playstyle_id)
        REFERENCES Playstyles(id),
    
    PRIMARY KEY (item_id, playstyle_id)
);

CREATE TABLE ChampionPlaystyleMappings (
    champion_id MEDIUMINT NOT NULL,
    playstyle_id MEDIUMINT NOT NULL,
    weight INT NOT NULL,

    FOREIGN KEY(champion_id)
        REFERENCES Champions(id),

    FOREIGN KEY(playstyle_id)
        REFERENCES Playstyles(id),

    PRIMARY KEY (champion_id, playstyle_id)
);

CREATE TABLE AugmentPlaystyleMappings (
    augment_id MEDIUMINT NOT NULL,
    playstyle_id MEDIUMINT NOT NULL,
    weight INT NOT NULL,

    FOREIGN KEY(augment_id)
        REFERENCES Augments(id),

    FOREIGN KEY(playstyle_id)
        REFERENCES Playstyles(id),

    PRIMARY KEY (augment_id, playstyle_id)
);