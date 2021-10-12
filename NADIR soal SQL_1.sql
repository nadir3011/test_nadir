
SELECT nil.nik, sis.nama, nil.kelas, nil.semester, pel.nama_pelajaran, nil.type_nilai, nil.nilai
FROM nilai nil
JOIN siswa sis
ON nil.nik=sis.nik
JOIN pelajaran pel
ON nil.id_pelajaran=pel.id_pelajaran
WHERE nil.kelas='VI'
ORDER BY nil.id_pelajaran, sis.nama