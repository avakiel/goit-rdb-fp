INSERT INTO entities (entity, code)
SELECT DISTINCT
    Entity,
    COALESCE(Code, '')
FROM infectious_cases;