SELECT
    e.entity,
    e.code,

    AVG(CAST(icn.number_rabies AS DECIMAL(10,2))) AS avg_rabies,
    MIN(CAST(icn.number_rabies AS DECIMAL(10,2))) AS min_rabies,
    MAX(CAST(icn.number_rabies AS DECIMAL(10,2))) AS max_rabies,
    SUM(CAST(icn.number_rabies AS DECIMAL(10,2))) AS sum_rabies

FROM infectious_cases_normalized icn
JOIN entities e
    ON icn.entity_id = e.entity_id

WHERE icn.number_rabies IS NOT NULL
  AND icn.number_rabies <> ''

GROUP BY icn.entity_id, e.entity, e.code

ORDER BY avg_rabies DESC

LIMIT 10;