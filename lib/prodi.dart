class Prodi {
  final String username;
  final String logo;
  final String profil;
  final String visiMisi;
  final String akreditasi;
  final String korprodi;
  final String dosen;
  final String prestasimahasiswa;
  final String website;

  const Prodi({
    required this.username,
    required this.logo,
    required this.profil,
    required this.visiMisi,
    required this.akreditasi,
    required this.korprodi,
    required this.dosen,
    required this.prestasimahasiswa,
    required this.website,
  });
}

  List<Prodi> users = [
    Prodi(
      username: "Hubungan Internasional",
      logo: 'assets/upn.png',
      profil: "Program Studi S1 Hubungan Internasional didirikan pada tanggal 30 September 2011, di bawah Fakultas Ilmu Sosial dan Ilmu Politik melalui Surat Keputusan Menteri Pendidikan Nasional nomor 216/E/O/2011. Sebagai program studi yang relatif baru, HI mendapatkan status B (Baik) dari Badan Akreditasi Nasional Perguruan Tinggi (BAN-PT) dengan nomor SK 1071/1/1/SK/BAN-PT/Akred/S/IV/2019.",
      visiMisi: "VISI : \n Menjadi Program Studi Hubungan Internasional Unggul Berkarakter Bela Negara \n MISI : \n 1. Menyelanggarakan dan mengembangkan pendidikan bidang ilmu hubungan internasional yang berkarakter bela negara. \n 2. Meningkatkan budaya riset dalam pengembangan ilmu hubungan internasional yang berdayaguna untuk peningkatkan kesejateraan masyarakat. \n 3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal. \n 4. Menyelenggaraan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaaan anggaran di program studi hubungan internasional. \n 5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial.",
      akreditasi: "Akreditasi : B (BAN-PT)",
      korprodi: "Koordinator Program Studi \n Dra. Herlina Suksmawati, M.Si.",
      dosen: "Beberapa Dosen : \n 1. Adiasri Putri Purbantina, Ph.D \n 2. Megahnanda Alidyan Kresnawati, S.IP., M.IP. \n 3. Prihandono Wibowo, S.Hub.Int., M.Hub.Int. \n 4. Resa Rasyidah, S.Hub.Int., M.Hub.Int. \n 5. Renitha Dwi Hapsari, S.Hub.Int., M.Hub.Int.",
      website: 'https://hubint.upnjatim.ac.id/',
      prestasimahasiswa: 'Prestasi Mahasiswa : \n 1. Alinda Rana Permata Surya - Juara 3 basket putri 5x5 U18 \n 2. Ryan Agung Priangga - Juara 3 PORPROV Jatim Taekwondo putra 74 KG \n 3. Owiena Aurellia Rusdi - Juara 1 200m kejurda finswimming jawa timur',
    ),

    Prodi(
      username: "Ilmu Komunikasi",
      logo: 'assets/upn.png',
      profil: "Berdasarkan surat keputusan badan akreditasi Nasional perguruan tinggi departemen pendidikan Nasional nomor 2982/BAN-PT/AKRED/PT/XII/2016, tertanggal 20 Desember 2016 program studi ilmu komunikasi memperoleh nilai akreditasi A.",
      visiMisi: "VISI : \n Menjadi Program Studi Ilmu Komunikasi unggul dalam mencetak sarjana yang kompeten dalam bidang penyiaran,jurnalistik, hubungan masyarakat, periklanan dan dijiwai oleh nilai-nilai Bela Negara di wilayah Indonesia \n MISI: \n 1. Menjunjung tinggi tata nilai-nilai agama, moral, etika dan tanggungjawab professional utamanya dalam bidang penyiaran, jurnalistik, hubungan masyarakat dan periklanan.\n 2. Mampu menerapkan teori Ilmu Komunikasi dalam memecahkan masalah-masalah komunikasi dan mampu melakukan riset dan analisis dibidang Ilmu Komunikasi utamanya dalam bidang penyiaran, jurnalistik, hubungan masyarakat dan periklanan. \n 3. Mampu merumuskan, mengimplementasikan dan mengevaluasi kebijakandibidang Ilmu Komunikasi yang terkait dalam bidang penyiaran, jurnalistik, hubungan masyarakat, periklanan. \n 4. Mampu melaksanakan tugas dengan disiplin dan penuh rasa tanggung jawab atas pencapaian hasil kerja organisasi utamanya dalam bidang penyiaran, jurnalistik, hubungan masyarakat, periklanan.",
      akreditasi: "Akreditasi : A dan FIBAA",
      korprodi: "Koordinator Program Studi \n Catur Suratnoaji, Dr, MSi.",
      dosen: "Beberapa Dosen : \n 1. Catur Suratnoaji, Dr, MSi. \n 2. Didik Tranggono, Ir, M.Si. \n 3. Yuli Candrasari, Dr., S.Sos, M.Si \n 4. Yudiana Indriastuti, Dr., S.Sos.M.Si. \n 5. Aulia Rachmawati, Dr., S.Sos.M.Si.",
      website: 'https://ilkom.upnjatim.ac.id/',
      prestasimahasiswa: 'Prestasi Mahasiswa : \n 1. Sekar Arum Yulianti Putri W - Juara 3 tanding pencak silat kelas B putri \n 2. Ahmad Derajat Waskito - Jurara 1 Tarung Bebas 57 KG senior \n 3. Adrina Andini - Medali perak bidang bahasa Inggris (olimpiade sains tingkat nasional)',
    ),

    Prodi(
      username: "Administrasi Bisnis",
      logo: 'assets/upn.png',
      profil: "Progdi Administrasi Bisnis berdiri pada tahun 1993 berdasarkan Surat Keputusan Menhankam Nomor Kep/01/II/1993. Pada tahun 2001, untuk pertama kalinya Progdi Adbis melakukan akreditasi BAN-PT, hasilnya mendapat nilai akreditasi B. Pada tahun  2006 melakukan reakreditasi, berdasarkan Surat Keputusan BAN-PT No.: 028/BAN-PT/AK-IX/S1/I/2006, hasilnya mendapatkan nilai akreditasi A, Serta yang terakhir pada tahun 2012 Program Studi Ilmu Aministrasi Bisnis memperoleh Akreditasi A dengan skor total 361 berdasarkan Surat Keputusan BAN PT No,022/BAN-PT/Ak-SURV-III/S1/III/2012. Akreditasi A mampu dipetahankan oleh Prodi Ilmu Administrasi Bisnis pada 21 mei 2016 untuk yang ketiga kali.",
      visiMisi: "VISI : \n Visi Program Studi Administrasi Bisnis Fakultas Ilmu Sosial dan Ilmu Politik UPN Veteran Jawa Timur (FISIP-UPNVJT) sebagai lembaga pengembangan ilmu dan teknologi dibidang Administrasi Bisnis yang Unggul, Terpercaya dan bekarakter Bela Negara pada tahun 2024. \n MISI : \n 1. Menyelenggarakan pendidikan dan pengajaran di bidang Administrasi Bisnis.yang berkualitas, relevan, dan berorientasi pada kebutuhan masyarakat, bangsa, dan Negara. \n 2. Menyelenggarakan kegiatan penelitian di bidang Administrasi Bisnis utamanya pada bidang pemasaran, keuangan, sumber daya manusia, system informasi bisnis, operasibisnis, kebijakan bisnis serta mengimplementasikannya dalam pendidikan dan pengajaran serta pengabdian pada masyarakat. \n 3. Mengembangkan dan menguatkan hubungan kerjasama dengan berbagai pihak baik dengan pemerintah maupun lembaga swasta. Dalam dan luar negeri",
      akreditasi: "Akreditasi : A (BAN-PT)",
      korprodi: "Koordinator Program Studi : \n Dr. Acep Samsudin.,S,Sos.,MM.,MA",
      dosen: "Beberapa Dosen : \n 1. Dr. Ir. Rusdi Hidayat N, M.Si \n 2. Dr. Drs. Nurhadi, M.Si \n 3. R Yuniadi Rusdianto, S.Sos.,M.Si \n 4. Dra. Ety Dwi Susanti, M.Si \n 5. Dra. Sonja Andarini, M.Si",
      website: 'https://adneg.upnjatim.ac.id/',
      prestasimahasiswa: 'Prestasi Mahasiswa : \n 1. Julius Emmanuel S - Jurara 1 karate kata beregu PORPROV Jatim \n 2. Silvia Nur S - Juara Persahabatan Duta Perlindungan Anak Jawa Timur',
    ),
  ];