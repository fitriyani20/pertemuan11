CREATE VIEW CekSatusKamarViaID AS
SELECT 
    A.nama_tipe, 
    B.status AS status
FROM 
    Tipe_kamar AS A
JOIN 
    kamar AS B
ON 
    A.id_tipe = B.id_tipe
WHERE 
    B.status = 'tersedia' OR B.status = 'maintenance';

SELECT * FROM CekStatusKamarViaID;