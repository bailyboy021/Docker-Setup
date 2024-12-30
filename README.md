# Docker-Setup

Repositori ini adalah konfigurasi Docker untuk menjalankan aplikasi Laravel dengan berbagai layanan seperti MySQL, MongoDB, Nginx, dan PHP-FPM dalam lingkungan pengembangan lokal. Dengan menggunakan Docker Compose, Anda dapat dengan mudah mengelola dan menjalankan aplikasi dalam kontainer yang terisolasi.

## Struktur Folder/Files

```
Docker-Setup/
├── crud/                # Folder aplikasi Laravel
├── Dockerfile           # File konfigurasi Docker untuk Laravel
├── docker-compose.yml   # File konfigurasi Docker Compose
├── nginx.conf           # File konfigurasi Nginx
```

### Penjelasan
- **crud/**: Folder utama untuk source code Laravel.
- **Dockerfile**: Berisi instruksi untuk membangun container Laravel.
- **docker-compose.yml**: Mengatur layanan (services) yang dibutuhkan seperti Laravel, Nginx, dan database.
- **nginx.conf**: Konfigurasi Nginx untuk menangani request HTTP.

## Prasyarat

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

Pastikan kedua tools di atas telah terinstall di komputer Anda.

## Konfigurasi Tambahan

### Environment Laravel
Pastikan file `.env` di folder `crud/` sudah diatur dengan benar, khususnya pengaturan database agar sesuai dengan konfigurasi di `docker-compose.yml`.

### Database
Jika Anda menambahkan layanan database di `docker-compose.yml`, sesuaikan konfigurasi database di file `.env` Laravel, seperti berikut:

```
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=nama_database
DB_USERNAME=nama_user
DB_PASSWORD=password
```
