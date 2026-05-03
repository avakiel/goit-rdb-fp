CREATE TABLE infectious_cases_normalized (
    case_id INT AUTO_INCREMENT PRIMARY KEY,
    entity_id INT NOT NULL,
    year INT,
    number_yaws TEXT,
    polio_cases TEXT,
    cases_guinea_worm TEXT,
    number_rabies TEXT,
    number_malaria TEXT,
    number_hiv TEXT,
    number_tuberculosis TEXT,
    number_smallpox TEXT,
    number_cholera_cases TEXT,
    CONSTRAINT fk_cases_entity
        FOREIGN KEY (entity_id) REFERENCES entities(entity_id)
);