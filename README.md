# Diskriminan Linear
Linear discriminant analysis adalah generalisasi dari Fisher linear discriminant yang diciptakan oleh Ronald A. Fisher pada tahun 1936 untuk melakukan berbagai pengukuran untuk masalah Taxonomi. Linear discriminant analysis sedikit berbeda dari fisher linear discriminant dimana linear discriminant analysis mengasumsikan variabel yang digunakan berdistribusi normal dan mempunyai kovarians dengan kelas yang sama. Tujuan dari linear discriminant analysis (LDA) adalah mengklasifikasikan objek ke dalam beberapa kelas berdasarkan fitur yang menggambarkan objek tersebut, di dalam linear discriminant analysis objek mempunyai dua variable yaitu variable kelas/terikat (dependent variable) dan variable atribut/bebas (independent variable), variable terikat mempunyai ikatan dengan variable bebas yang yang menggambarkan variable tersebut. Variable bebas nantinya akan digunakan untuk menentukan kombinasi linear dari objek tersebut. LDA bekerja dengan menggunakan analisa matriks penyebaran yang bertujuan menemukan proyeksi optimal sehingga dapat memproyeksikan data input pada ruang dengan dimensi yang lebih kecil dimana semua pola (pattern) dapat dipisahkan semaksimal mungkin [3]. Dalam LDA variable dependent merupakan kelas dari object yang biasanya mempunyai nilai nominal / nama dari kelas (lulus/tidak lulus) dan variable independent merupakan fitur yang menggambarkan object tersebut biasanya bernilai skalar. Sebelum melakukan prediksi, LDA membutuhkan fase training untuk menentukan fungsi diskriminan. Fase training ini membutuhkan objek yang telah terklasifikasi beserta sejumlah variabel fitur/independen variable. 

# Langkah Analisis
Berikut adalah prosedur analisis dengan menggunakan metode diskriminan linear dengan menggunkan aplikasi RStudio
1) Import data
2) Membuat kelas baru
3) Membagi dataset menjadi dua bagian secara acak
4) Bentuk data training
5) Bentuk data testing
6) Uji Ragam-peragam
7) Uji prediksi 
8) Uji kebaikan prediksi

# Interpretasi Hasil
Pada tahap ini, adapun software yang digunakan untuk menganalisis pemodelan algoritma mengenai masalah prediksi dengan tipe klasifikasi yaitu dengan menggunakan
software R, dimana analisis yang digunakan adalah Analisis Diskriminan Linear (LDA). Dimana, akan dilakukan prediksi menggunakan data testing. Ukuran kebaikan model yang digunakan untuk mengevaluasi hasil prediksi adalah nilai akurasi, sensitivitas dan spesifisitas. Adapun nilai dari akurasi,sensitivitas dan spesifisitas dari ketiga metode sebagai berikut:
- Akurasi
Tingkat ketepatan model dalam memprediksi akreditas pada data testing 
sebesar 0,7789606
- Sensitifitas
Tingkat ketepatan dalam memprediksi akreditas A sebesar 0.5053092
- Spesifisitas
Tingkat ketepatan dalam memprediksi akreditas selain A sebesar 0.9163009
![image](https://user-images.githubusercontent.com/116243989/197653447-a318a757-b9bd-4031-8721-d882b0afc72d.png)
