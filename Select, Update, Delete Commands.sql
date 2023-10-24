USE lab_exercises;

SELECT * FROM als_genes;

SELECT gene_name FROM als_genes;

SELECT * FROM als_genes WHERE normal_function='autophagy';

SELECT * FROM als_genes WHERE normal_function='autophagy' group by normal_function;
SET SQL_SAFE_UPDATES = 0;
UPDATE als_genes SET normal_function='mitophagy' WHERE gene_name='TBK1'; 
select * FROM als_genes WHERE ALS_type = 'SALS';
select * FROM als_genes WHERE ALS_type = 'SALS'AND ALS_type='FALS';

UPDATE als_genes SET ALS_type='SALS'&'FALS'
WHERE gene_name = 'CHMP2B';


SELECT * FROM als_genes;
DELETE FROM als_genes WHERE exon_count >20;




