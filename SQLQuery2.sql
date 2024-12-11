CREATE VIEW ViewTipeKamarDenganJumlah AS
SELECT 
    Tipe_Kamar.id_tipe,
    Tipe_Kamar.nama_tipe,
    Tipe_Kamar.deskripsi,
    Tipe_Kamar.kapasitas,
    Tipe_Kamar.harga_per_malam,
    Tipe_Kamar.fasilitas,
    COUNT(Kamar.id_kamar) AS jumlah_kamar_tersedia
FROM Tipe_Kamar LEFT JOIN Kamar  ON Tipe_Kamar.id_tipe = Kamar.id_tipe AND Kamar.status = 'tersedia'
GROUP BY Tipe_Kamar.id_tipe, Tipe_Kamar.nama_tipe, Tipe_Kamar.deskripsi, Tipe_Kamar.kapasitas, Tipe_Kamar.harga_per_malam, Tipe_Kamar.fasilitas;

CREATE VIEW ViewReservasiDetail AS
SELECT 
    Reservasi.id_reservasi,
    Reservasi.tanggal_check_in,
    Reservasi.tanggal_check_out,
    Reservasi.jumlah_tamu,
    Reservasi.status_reservasi,
    Reservasi.total_harga,
    Tamu.nama_lengkap AS nama_tamu,
    Kamar.nomor_kamar AS nomor_kamar
FROM Reservasi  JOIN Tamu ON Reservasi.id_tamu = Tamu.id_tamu
JOIN Kamar ON Reservasi.id_kamar = Kamar.id_kamar;

