all_records = LOAD ' /SampleData/ access1.log' USING PigStorage('\n') AS (each_raw:chararray);
good_records_only = FILTER all_records BY (NOT $0 IS NULL) AND ($0 MATCHES '.*productId=DB-SG-G01+.*');
STORE premium_products INTO '/op';