import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widget/youtube_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: 'AJAK MOBILITAS',
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          iconTheme:
              IconThemeData(color: const Color.fromARGB(255, 255, 255, 255)),
          foregroundColor:
              const Color.fromARGB(255, 255, 255, 255), //<-- SEE HERE
        ),
      ),
      home: HomePage(),
      routes: {
        '/intro': (context) => IntroPage(),
        '/mainMenu': (context) => MainMenuPage(),
        '/teknik_mengajak': (context) => TeknikMengajakPage(),
        '/tunanetra_paham': (context) => TunanetraPahamPage(),
        '/tunanetra_belum_paham': (context) => TunanetraBelumPahamPage(),
        '/teknik_jalan_sempit': (context) => TeknikJalanSempitPage(),
        '/teknik_berpindah_pegangan': (context) =>
            TeknikBerpindahPeganganPage(),
        '/teknik_berbalik_arah': (context) => TeknikBerbalikArahPage(),
        '/teknik_naikturun_tangga': (context) => TeknikNaikTurunTanggaPage(),
        '/teknik_menaiki_tangga': (context) => MenaikiTanggaPage(),
        '/teknik_menuruni_tangga': (context) => MenuruniTanggaPage(),
        '/teknik_naikturun_kendaraan': (context) =>
            TeknikNaikTurunKendaraanPage(),
        '/teknik_naik_kendaraan': (context) => NaikKendaraanPage(),
        '/teknik_turun_kendaraan': (context) => TurunKendaraanPage(),
        '/teknik_mengajak_duduk': (context) => MengajakDudukPage(),
        '/teknik_bukatutup_pintu': (context) => TeknikBukaTutupPintuPage(),
        '/teknik_membuka_pintu': (context) => MembukaPintuPage(),
        '/teknik_menutup_pintu': (context) => MenutupPintuPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Text(
                'SELAMAT DATANG DI APLIKASI AJAK MOBILITAS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 80),
            Container(
              child: Image.asset(
                "assets/Vector.jpg",
                width: 197,
                height: 252,
              ),
            ),
            SizedBox(height: 80),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/intro');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors
                      .red), // Mengubah warna latar belakang menjadi merah
                ),
                child: Text(
                  "MULAI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengenalan'),
        centerTitle: true,
      ),
      // drawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Mengubah alignment menjadi start
          children: [
            SizedBox(height: 28),
            Expanded(
              // Menambahkan Expanded di sekitar Container
              child: Container(
                margin: EdgeInsets.only(right: 10, left: 10, top: 30),
                child: Column(
                  children: [
                    Text(
                      'AJAK MOBILITAS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 28),
                    Text(
                      'Ajak Mobilitas merupakan aplikasi informatif bagi pendamping awas mengenai cara memberikan bantuan dalam bermobilitas yang benar kepada tunanetra',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/mainMenu');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "MENU UTAMA",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'.toUpperCase()),
        centerTitle: true,
      ),
      // drawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Mengubah alignment menjadi start
          children: [
            SizedBox(height: 28),
            Expanded(
              // Menambahkan Expanded di sekitar Container
              child: Container(
                margin: EdgeInsets.only(right: 10, left: 10, top: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.red,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/teknik_mengajak');
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "", // Biarkan teks ini kosong
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                8), // Berikan jarak antara lingkaran dan teks
                        Text(
                          "TEKNIK MENGAJAK",
                          style: TextStyle(
                            color: Colors
                                .black, // Ganti warna teks sesuai kebutuhan Anda
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.red,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/teknik_mengajak');
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "", // Biarkan teks ini kosong
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                8), // Berikan jarak antara lingkaran dan teks
                        Text(
                          "TEKNIK MENGAJAK",
                          style: TextStyle(
                            color: Colors
                                .black, // Ganti warna teks sesuai kebutuhan Anda
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_jalan_sempit');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "TEKNIK JALAN SEMPIT",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_berpindah_pegangan');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "TEKNIK BERPINDAH\nPEGANGAN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_berbalik_arah');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "TEKNIK BERBALIK ARAH",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_naikturun_tangga');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "NAIK TURUN TANGGA",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_naikturun_kendaraan');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "NAIK TURUN KENDARAAN",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_mengajak_duduk');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "MENGAJAK DUDUK",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_bukatutup_pintu');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "MEMBUKA DAN MENUTUP\nPINTU",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}

class TeknikMengajakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEKNIK MENGAJAK'),
        centerTitle: true,
      ),
      // endDrawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Mengubah alignment menjadi start
          children: [
            SizedBox(height: 28),
            Expanded(
              // Menambahkan Expanded di sekitar Container
              child: Container(
                margin: EdgeInsets.only(right: 10, left: 10, top: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/tunanetra_paham');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "TUNANETRA PAHAM",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/tunanetra_belum_paham');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "TUNANETRA BELUM PAHAM",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeknikNaikTurunTanggaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TEKNIK NAIK TURUN\nTANGGA',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      // endDrawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Mengubah alignment menjadi start
          children: [
            SizedBox(height: 28),
            Expanded(
              // Menambahkan Expanded di sekitar Container
              child: Container(
                margin: EdgeInsets.only(right: 10, left: 10, top: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_menaiki_tangga');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "menaiki tangga".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_menuruni_tangga');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "menuruni tangga".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeknikNaikTurunKendaraanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TEKNIK NAIK TURUN\nKENDARAAN',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      // endDrawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Mengubah alignment menjadi start
          children: [
            SizedBox(height: 28),
            Expanded(
              // Menambahkan Expanded di sekitar Container
              child: Container(
                margin: EdgeInsets.only(right: 10, left: 10, top: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_naik_kendaraan');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "naik kendaraan".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_turun_kendaraan');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "turun kendaraan".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeknikBukaTutupPintuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEKNIK Buka tutup pintu'.toUpperCase()),
        centerTitle: true,
      ),
      // endDrawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Mengubah alignment menjadi start
          children: [
            SizedBox(height: 28),
            Expanded(
              // Menambahkan Expanded di sekitar Container
              child: Container(
                margin: EdgeInsets.only(right: 10, left: 10, top: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_membuka_pintu');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "membuka pintu".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: SizedBox(
                        width: 250,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/teknik_menutup_pintu');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .red), // Mengubah warna latar belakang menjadi merah
                          ),
                          child: Text(
                            "menutup pintu".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TunanetraPahamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/QUvEQ0eXSPw',
        title: "tunatera paham",
        subject_1: "Ajak Tunanetra bepergian menawarkan bantuan",
        subject_2: "tunanetra paham",
        content:
            "a. Pendamping awas menyentuh punggung telapak tangan tunanetra.\n\nb. Setelah menerima ajakan/bantuan, tunanetra memegang lengan pendamping awas.\n\nc. Setelah posisi telah sesuai, maka pendamping awas dapat mengajak tunanetra bepergian.\n\n",
      ),
    );
  }
}

class TunanetraBelumPahamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/ONgtFccKPQE',
        title: "tunatera belum paham",
        subject_1: "Ajak Tunanetra bepergian menawarkan bantuan",
        subject_2: "tunanetra belum paham",
        content:
            "a. Pendamping awas menyentuh punggung telapak tangan tunanetra.\n\nb. Setelah menerima ajakan/bantuan, tunanetra memegang lengan pendamping awas.\n\nc. Setelah posisi telah sesuai, maka pendamping awas dapat mengajak tunanetra bepergian.\n\n",
      ),
    );
  }
}

class TeknikJalanSempitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/JvFPYtQW1Sw',
        title: "teknik jalan sempit",
        subject_1: "Ajak Tunanetra Melewati Jalan Sempit",
        subject_2: "",
        content:
            "a.	Pendamping awas menginformasikan kepada tunanetra akan melewati jalan sempit.\n\nb.	Pendamping awas menarik lengan yang dijadikan pegangan untuk tunanetra ke belakang punggung.\n\nc.	Tunanetra menyesuaikan tangan yang memegang lengan pendamping awas dengan posisi berada sejajar tepat di belakang pendamping awas.\n\nd.	Pendamping awas dan tunanetra dapat berjalan melewati jalan sempit.\n\ne.	Setelah selesai melewati jalan sempit, pendamping awas dan tunanetra kembali ke posisi semula.\n",
      ),
    );
  }
}

class TeknikBerpindahPeganganPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/L7xb6wP9hHw',
        title: "teknik berpindah pegangan",
        subject_1: "Ajak Tunanetra Berpindah Pegangan",
        subject_2: "",
        content:
            "a.	Pendamping menginformasikan kepada tunanetra untuk pindah pegangan atau inisiatif tunanetra.\n\nb.	Kedua tangan tunanetra memegang salah satu lengan pendamping awas.\n\nc.	Satu tangan tunanetra berpindah ke lengan pendamping awas yang bebas, diikuti tangan lainnya.\n\nd.	Ketika sudah berpindah pegangan ke lengan pendamping awas, tunanetra melepaskan satu tangan dan berjalan seperti biasa.\n\n",
      ),
    );
  }
}

class TeknikBerbalikArahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/qpzSHvDgAGg',
        title: "Teknik Berbalik arah",
        subject_1: "Ajak Tunanetra Berbalik arah",
        subject_2: "",
        content:
            "a.	Pendamping awas dan tunanetra berputar ke arah dalam (ke arah dimana lengan pendamping awas dipegang dan tangan tunanetra memegang).\n\nb.	Lengan tunanetra yang bebas digerakan ke arah dalam untuk mencari lengan pendamping awas yang bebas dan memegangnya.\n\nc.	Ketika pendamping awas melangkah ke arah yang berlawanan dengan arah semula, tunanetra melepaskan tangan yang pertama yang memegang lengan pendamping.\n\nd.	Setelah berbalik arah, pendamping awas dan tunanetra berjalan seperti biasa.\n\n",
      ),
    );
  }
}

class MenaikiTanggaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/COmEgYHziPo',
        title: "menaiki tangga",
        subject_1: "Ajak Tunanetra Menaiki Tangga",
        subject_2: "",
        content:
            "a.	Pendamping awas menginformasikan keberadaan tangga yang akan dilewati\n\nb.	Menuntun tunanetra sampai di depan anak tangga\n\nc.	Posisi pendamping satu langkah di depan tunanetra\n\nd.	Pendamping awas melangkah dan menginformasikan tunanetra untuk menaiki tangga\n\ne.	Apabila telah selesai menaiki tangga, pendamping awas berhenti dan memberitahukan tangga selesai terlewati.\n\n",
      ),
    );
  }
}

class MenuruniTanggaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/COmEgYHziPo',
        title: "menuruni tangga",
        subject_1: "Ajak Tunanetra Menuruni Tangga",
        subject_2: "",
        content:
            "a.	Menginformasikan bahwa akan menuruni tangga.\n\nb.	Kaki pendamping awas menuruni anak tangga pertama, lalu berhenti.\n\nc.	Tunanetra maju ke depan sehingga kakinya tepat menyentuh pinggiran tangga.\n\nd.	Posisi pendamping satu langkah di depan tunanetra.\n\ne.	Pendamping awas dan tunanetra menuruni tangga.\n\nf.	Apabila telah selesai menuruni tangga, pendamping awas berhenti dan memberitahukan tangga selesai terlewati.\n",
      ),
    );
  }
}

class NaikKendaraanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/COmEgYHziPo',
        title: "naik kendaraan",
        subject_1: "Ajak Tunanetra Naik Kendaraan",
        subject_2: "",
        content:
            "a. Berhenti di samping kendaraan dan menginformasikan kepada tunanetra arah kendaraan.\n\nb. Tempatkan tangan tunanetra pada jok dan pegangan kendaraan bagian belakang.\n\nc. Menyerahlkan helm ke tunanetra\n\nd. Pendamping awas naik ke atas kendaraan dan menyalakan mesin kendaraan\n\ne. Tunanetra naik dengan meraba jok kendaraan.\n\nf. Pengecekan posisi dan letak tubuh tunanetra pada jok kendaraan.\n\ng. Pendamping awas menginformasikan jika ingin menjalankan kendaraan.\n",
      ),
    );
  }
}

class TurunKendaraanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/COmEgYHziPo',
        title: "turun kendaraan",
        subject_1: "Ajak Tunanetra Turun Kendaraan",
        subject_2: "",
        content:
            "a. Kendaraan berhenti, tunanetra diinformasikan untuk turun dari kendaraan\n\nb. Setelah tunanetra turun, pendamping awas turun dari kendaraan\n\nc. Tunanetra menyerahkan helm dan berjalan seperti biasa bersama pendamping awas\n\n",
      ),
    );
  }
}

class MengajakDudukPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/4C8yPLgc5x4',
        title: "mengajak duduk",
        subject_1: "Ajak Tunanetra\nuntuk Duduk",
        subject_2: "",
        content:
            "a. Pendamping awas bersama tunanetra berhenti di dekat kursi.\n\nb. Pendamping awas menuntun dan meletakkan tangan tunanetra pada bagian kursi.\n\nc. Tunanetra meraba kursi yang akan diduduki.\n\n",
      ),
    );
  }
}

class MembukaPintuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/COmEgYHziPo',
        title: "membuka pintu",
        subject_1: "Ajak Tunanetra Membuka Pintu",
        subject_2: "",
        content:
            "a.	Posisikan tunanetra searah dengan arah pintu yang akan dibuka.\n\nb.	Pendamping awas menginformasikan keberadaan pintu.\n\nc.	Pendamping awas menuntun tunanetra untuk menyentuh bagian pintu.\n\nd.	Pendamping awas membiarkan tunanetra membuka pintu.\n\ne.	Pendamping awas masuk bersama tunanetra yang masih memegang pintu.\n\n",
      ),
    );
  }
}

class MenutupPintuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubePlayerWidget(
        videoUrl: 'https://youtu.be/COmEgYHziPo',
        title: "menutup pintu",
        subject_1: "Ajak Tunanetra Menutup Pintu",
        subject_2: "",
        content:
            "a.	Ketika sudah berada di dalam, pendamping awas membiarkan tunanetra menutup pintu.\n\nb.	Setelah pintu tertutup, tunanetra kembali ke posisi berpegangan dengan pendamping awas.\n\n",
      ),
    );
  }
}
