SELECT nil.nik, sis.nama, pel.nama_pelajaran, (nil.nilai) AS nial
FROM nilai nil
JOIN 
(
SELECT DISTINCT nilai.nik
FROM nilai
) AS dt ON nil.id_nilai=
(
SELECT tt.id_nilai FROM nilai tt WHERE tt.nik=dt.nik ORDER BY tt.nilai DESC LIMIT 1
)
JOIN pelajaran pel
ON pel.id_pelajaran = nil.id_pelajaran
JOIN siswa sis
ON nil.nik = sis.nik
ORDER BY nil.nik