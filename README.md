
# Sistem Informasi Musik

Sistem ini adalah aplikasi web yang menyediakan informasi tentang musik, termasuk data artis, album, lagu, genre, pengguna, dan lebih banyak lagi. Proyek ini menggunakan Express.js untuk membangun REST API dan Sequelize sebagai ORM untuk interaksi dengan database.

## Struktur Database

Database terdiri dari 10 tabel dengan relasi sebagai berikut:

1. **Artist**
   - Menyimpan informasi tentang artis.
   - Atribut: `id`, `name`, `bio`, `tipe`, `debut_year`.

2. **Music**
   - Menyimpan informasi tentang lagu.
   - Atribut: `id`, `title`, `duration`, `ArtistId`, `AlbumId`, `GenreId`, `PlatformId`.

3. **Genre**
   - Menyimpan kategori musik.
   - Atribut: `id`, `name`.

4. **Albums**
   - Menyimpan informasi tentang album.
   - Atribut: `id`, `title`, `release_year`, `ArtistId`.

5. **User**
   - Menyimpan informasi tentang pengguna aplikasi.
   - Atribut: `id`, `username`, `password`, `email`.

6. **Rating**
   - Menyimpan penilaian untuk lagu.
   - Atribut: `id`, `score`, `MusicId`, `UserId`.

7. **Playlist**
   - Menyimpan daftar putar musik milik pengguna.
   - Atribut: `id`, `title`, `UserId`.

8. **Event**
   - Menyimpan informasi tentang acara musik.
   - Atribut: `id`, `name`, `date`.

9. **Streaming Platform**
   - Menyimpan informasi tentang platform streaming.
   - Atribut: `id`, `name`.

10. **Awards**
    - Menyimpan informasi tentang penghargaan yang diterima oleh lagu.
    - Atribut: `id`, `name`, `MusicId`.

## Relasi Antartabel

- **User** memiliki banyak **Playlist**.
- **Playlist** memiliki banyak **Music**.
- **Artist** memiliki banyak **Album** dan **Music**.
- **Event** memiliki banyak **Artist**.
- **Platform** memiliki banyak **Music**.
- **Album** memiliki banyak **Music**.
- **Genre** memiliki banyak **Music**.
- **Music** memiliki banyak **Awards** dan **Rating**.




## Kontribusi

Jika Anda ingin berkontribusi pada proyek ini, silakan fork repositori ini dan buat pull request.

---

silahkan gunakan sesuai kemauan