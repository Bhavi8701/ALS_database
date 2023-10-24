USE lab_exercises;

SELECT * FROM als_genes
   WHERE gene_name IN (SELECT gene_name
         FROM als_genes
         WHERE Exon_count>10) ;
         
SELECT gene_name,location FROM als_genes 
WHERE gene_ID IN(SELECT gene_ID 
				FROM als_genes
                WHERE ALS_type='FALS');
                
SELECT gene_ID,gene_name,normal_function FROM als_genes
   WHERE gene_name IN (SELECT gene_name
         FROM als_genes
         WHERE Exon_count<10) ;

                

                

