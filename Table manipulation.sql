USE lab_exercises;

ALTER TABLE als_genes ADD organism VARCHAR(30);
UPDATE als_genes SET organism ='Homosapiens';
SELECT * FROM als_genes;


ALTER TABLE als_genes DROP COLUMN organism;

SELECT * FROM als_genes ORDER BY Exon_count ASC;

SELECT * FROM als_genes ORDER BY Exon_count DESC;


ALTER TABLE als_genes DROP COLUMN organism;