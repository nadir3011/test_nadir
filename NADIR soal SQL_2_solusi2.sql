SELECT nil.nik, sis.nama, pel.nama_pelajaran, (nil.nilai) AS nial
FROM nilai nil
JOIN pelajaran pel
ON pel.id_pelajaran = nil.id_pelajaran
JOIN siswa sis
ON nil.nik = sis.nik
WHERE nil.id_nilai=(SELECT nilX.id_nilai FROM nilai nilX WHERE nilX.nik=nil.nik ORDER BY nilX.nilai DESC LIMIT 1)
ORDER BY nil.nik
;

SELECT pel.nama_pelajaran, nil.nik, sis.nama, nil.nilai AS nial
FROM nilai nil
JOIN pelajaran pel
ON pel.id_pelajaran = nil.id_pelajaran
JOIN siswa sis
ON nil.nik = sis.nik
WHERE nil.id_nilai=(SELECT nilX.id_nilai FROM nilai nilX WHERE nilX.id_pelajaran=nil.id_pelajaran ORDER BY nilX.nilai DESC LIMIT 1)
ORDER BY nil.nik
;
