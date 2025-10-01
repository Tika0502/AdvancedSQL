201:
'SELECT
        w.w_name,m.m_name
     FROM 
        carmechanic.m_workshop w 
    JOIN 
        carmechanic.m_works_for wf ON w.w_id = wf.workshop_id
    JOIN
        carmechanic.m_mechanic m ON wf.mechanic_id = m.m_id
     ORDER BY 
        w_name, 
        m_name;/'



202:
'SELECT
        m_name, w_name
    FROM
        carmechanic.m_mechanic m
    JOIN 
        carmechanic.m_workshop w
    ON
        m.m_id = w.manager_id;/'



203:
BEGIN
    adbk25f.upload_solution(203,
    'SELECT
        color,
        COUNT(*) AS car_count
    FROM 
        carmechanic.m_car
    GROUP BY
        color
    HAVING
        COUNT(*) > 10;/');
END;
