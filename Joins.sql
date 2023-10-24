USE lab_exercises;

CREATE TABLE Gene_genomic_location
(
gene_name varchar(20),
genomic_location char(10)
);

INSERT INTO gene_genomic_location 
values('C9ORF72', '9p21.2'),
      ('SOD1', '21q22.11'),
      ('TBK1', '12q14.2'),
      ('PFN1', '17p13.2'),
      ('TARDBP','1p36.22'),
      ('CHCHD10','22q11.23'),
      ('FUS',   '16p11.2'),
      ('ATXN2',  '12q24.12'),
      ('OPTN',   '10p13'),
      ('SPG11',   '15q21.1'),
      ('FIG4',    '6q21'),
      ('CHMP2B',  '3p11.2'),
      ('SQSTM1',  '5q35.3');
      
SELECT * FROM gene_genomic_location;

SELECT * 
FROM als_genes 
INNER JOIN gene_genomic_location 
USING(gene_name);

SELECT * 
FROM gene_genomic_location 
right JOIN als_genes
USING(gene_name);

SELECT * 
FROM als_genes 
LEFT OUTER JOIN gene_genomic_location ON als_genes.gene_name = gene_genomic_location.gene_name
union
SELECT * 
FROM als_genes 
RIGHT OUTER JOIN gene_genomic_location ON als_genes.gene_name = gene_genomic_location.gene_name;

SELECT * 
FROM als_genes 
LEFT OUTER JOIN gene_genomic_location USING(gene_name)
union
SELECT * 
FROM als_genes 
RIGHT OUTER JOIN gene_genomic_location USING(gene_name);




      
      
      