# Tugas Pertemuan 2

Fork dan clone repository ini, lalu jalankan perintah 
```
flutter pub get
```
Buatlah tampilan form yang berisi nama, nim, dan tahun lahir pada file `ui/form_data.dart`, lalu buatlah tampilan hasil dari input data tersebut pada file `ui/tampil_data.dart`

JELASKAN PROSES PASSING DATA DARI FORM MENUJU TAMPILAN DENGAN FILE `README.md`

Buat tampilan semenarik mungkin untuk dilihat.


Nama : ___

NIM : ___

Shift Baru: ___

## Screenshot
Contoh :
![Lampiran Form](form.png)
![Lampiran Hasil](hasil.png)




PROSES PASSING DATA DARI FORM MENUJU TAMPILAN

1.	Form di input dari form_data.dart
FormData memiliki beberapa TextEditingController yang digunakan untuk mengambil input pengguna.
-	  _namaController untuk nama.
-	  _nimController untuk NIM.
-	  _tahunController untuk tahun lahir.
-	  _shiftbaruController untuk shift baru.
Pada bagian form, data dimasukkan melalui text field, dan disimpan dalam variabel controller yang terkait dengan masing-masing field.
Contoh Input : _buildTextField("Nama", _namaController, icon: Icons.person)

2.	Tekan tombol “Simpan”
-	Ketika tombol Simpan ditekan, kode di dalam onPressed dieksekusi:
onPressed: () {
   String nama = _namaController.text;
   String nim = _nimController.text;
   int tahun = int.parse(_tahunController.text);
   String shiftbaru = _shiftbaruController.text;
   Navigator.of(context).push(MaterialPageRoute(
       builder: (context) =>
           TampilData(nama: nama, nim: nim, tahun: tahun, shiftbaru: shiftbaru)));
 }
-	Penjelasan:
a.	Nilai dari masing-masing TextEditingController diambil menggunakan .text.
b.	Tahun lahir diubah menjadi int menggunakan int.parse().
c.	Data tersebut kemudian dipass ke widget TampilData melalui konstruktor, dengan variabel nama, nim, tahun, dan shiftbaru.

3.	Navigasi ke halaman tampil_data.dart
-	Setelah tombol ditekan dan data diambil, aplikasi menggunakan Navigator.push() untuk menavigasi ke layar baru, yaitu TampilData.
-	Pada Navigator.push(), kita menggunakan MaterialPageRoute untuk menampilkan halaman baru, dan pada bagian builder, kita membuat instance TampilData dengan data yang diterima dari form.
-	Contoh passing data:
TampilData(nama: nama, nim: nim, tahun: tahun, shiftbaru: shiftbaru)

4.	Penerimaan data di tampil_data.dart
-	Pada TampilData, data yang dikirim dari FormData diterima di konstruktor melalui parameter required this.nama, required this.nim, required this.tahun, dan required this.shiftbaru.
-	Data ini digunakan dalam widget build untuk menampilkan informasi seperti Nama, NIM, Tahun, dan Shift yang diterima dari form.
-	Misalnya, nilai nama dan umur (dihitung dari tahun) digunakan dalam metode _buildProfileHeader:
_buildProfileHeader(nama, umur)

5.	Menampilkan Data di UI tampil_data.dart
-	Di dalam widget TampilData, data yang sudah diterima dari FormData ditampilkan melalui beberapa widget seperti Text dan Card.
-	Setiap data ditampilkan menggunakan widget seperti berikut:
_buildInfoSection(
  icon: Icons.badge,
  label: "NIM",
  value: nim,
)
-	Umur dihitung dari tahun lahir 
final int umur = DateTime.now().year - tahun;

Output dari program : 
Awal
 
Input 
 
Ouptut
 

