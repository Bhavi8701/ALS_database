USE lab_exercises;
SELECT * FROM als_genes;

SELECT * FROM als_genes WHERE location = 'Chr-17' and ALS_type = 'FALS';
SELECT * FROM als_genes WHERE Exon_count > 10 and ALS_type = 'FALS';
SELECT gene_name FROM als_genes WHERE ALS_type = 'SALS' OR normal_function = 'macroautophagy';
SELECT * FROM als_genes WHERE Exon_count > 20 OR ALS_type = 'FALS';
SELECT gene_ID, gene_name FROM als_genes WHERE location = 'Chr-22' is TRUE;
SELECT gene_name,Exon_count,location FROM als_genes WHERE normal_function = 'actin dynamics' is FALSE;
SELECT * FROM als_genes WHERE Exon_count < 10 is FALSE;
SELECT * FROM als_genes WHERE ALS_type = 'SALS' is TRUE;

SELECT UPPER(normal_function) FROM als_genes;
SELECT LOWER(gene_name) FROM als_genes;
SELECT length(gene_ID) FROM als_genes WHERE gene_name = 'C9ORF72';
UPDATE als_genes SET normal_function = ' autophagy ' WHERE gene_ID =263228;
SELECT trim(normal_function) FROM als_genes AS trimmedstring;
SELECT instr('oxidative phosphorylation','s');
SELECT substr('macroautophagy',3,4);
SELECT concat(gene_ID,location) FROM als_genes;

Select GREATEST(12,4,7,15,16,3,5,11,10);
SELECT least(12,4,7,15,16,3,5,11,10);
SELECT sqrt(Exon_count) FROM als_genes;
SELECT power()






