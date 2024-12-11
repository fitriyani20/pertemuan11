
CREATE VIEW KamarKosong AS
SELECT status
FROM Kamar
WHERE status = 'maintenance' OR status = 'ditempati';

SELECT * FROM KamarKosong;

CREATE VIEW TotalHargaPelanggan AS
SELECT A.nama_lengkap, SUM(B.total_harga) AS total_harga
FROM Tamu AS A
JOIN Reservasi AS B
ON A.id_tamu = B.id_tamu
GROUP BY A.nama_lengkap;

SELECT * FROM TotalHargaPelanggan;



