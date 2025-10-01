301. List the mechanics who are younger than Balla Erik mechanic;

BEGIN adbk25f.upload_solution ( 301, '
    SELECT 
        m_name,
        TRUNC(MONTHS_BETWEEN(SYSDATE, birth_date)/12) AS age
    FROM 
        carmechanic.m_mechanic
    WHERE 
        m_name <> ''Balla Erik''
        AND TRUNC(MONTHS_BETWEEN(SYSDATE, birth_date)/12) < (
            SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, birth_date)/12)
            FROM 
                carmechanic.m_mechanic
            WHERE 
                m_name = ''Balla Erik'');/' );
END;

304. Which car (id, license_plate) was repaired the less times:
  
BEGIN adbk25f.upload_solution(304,'
SELECT
    c.c_id, 
    c.license_plate_number,
    COUNT(r.car_id) AS repair_count
FROM
    carmechanic.m_car c
LEFT JOIN
    carmechanic.m_repair r
ON
    c.c_id = r.car_id
GROUP BY
    c.c_id, c.license_plate_number
ORDER BY
    COUNT(r.car_id) ASC
FETCH FIRST 1 ROWS ONLY;/');
END;


