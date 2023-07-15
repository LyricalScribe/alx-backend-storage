--SQL script that ranks country origins of bands
--ordered by the number of (non-unique) fans
--script can be executed on any DB

SELECT origin, SUM(fans) AS nb_fasn
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;

