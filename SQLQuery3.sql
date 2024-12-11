USE Reservasi

CREATE VIEW viewKamar AS
SELECT lantai, nomor_kamar
FROM Kamar
WHERE lantai = '1'

SELECT * FROM viewKamar

CREATE VIEW viewPembayaran AS
SELECT nama_lengkap, SUM(b.jumlah_pembayaran) AS jumlah_pembayaran
FROM Tamu
JOIN Pembayaran b ON id_tamu = b.id_pembayaran
GROUP BY nama_lengkap

SELECT * FROM Pembayaran

