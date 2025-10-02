BEGIN adbk25f.upload_solution (101, 
'SELECT
    color,
    license_plate_number
FROM
    carmechanic.m_car
WHERE
    color IN (''gray'', ''blue'', ''white'')
OR
    color IS NULL
ORDER BY
    color DESC,
    license_plate_number DESC;/');
END;


BEGIN adbk25f.upload_solution (102, 
'SELECT
    o_name,
    address
FROM
    carmechanic.m_owner
WHERE
    address LIKE ''%Debrecen%''
ORDER BY
    o_name;/');
END;


