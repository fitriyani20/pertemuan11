USE newreservasi

CREATE VIEW viewAlamat AS
SELECT	nama_lengkap, alamat
FROM Tamu
WHERE alamat LIKE 'Jl.Kebon %'

CREATE VIEW ViewPembayaranCash AS
SELECT nomor_transaksi, jumlah_pembayaran, metode_pembayaran, tanggal_pembayaran
FROM Pembayaran
WHERE metode_pembayaran = 'cash'

CREATE VIEW ViewAlamat AS 
SELECT nama_lengkap, alamat
FROM Tamu
WHERE alamat LIKE 'Jl. Kebon%'

SELECT * FROM ViewPembayaranCash
SELECT * FROM ViewAlamat
