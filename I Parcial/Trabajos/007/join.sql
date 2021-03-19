USE ConceptsAndSamples;

SHOW TABLES;

DESC DataTablaSectionA;
DESC DataTablaSectionB;

SELECT * FROM DataTablaSectionA;
SELECT * FROM DataTablaSectionB;

-- Left Join (Izquierda)

SELECT
    *
FROM 
    DataTablaSectionA
LEFT JOIN 
    DataTablaSectionB ON DataTablaSectionA.num_int = DataTablaSectionB.num_int
;

-- Right Join (Derecha)

SELECT
    *
FROM 
    DataTablaSectionA
RIGHT JOIN 
    DataTablaSectionB ON DataTablaSectionA.num_int = DataTablaSectionB.num_int
;