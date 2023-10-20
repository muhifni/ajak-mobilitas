import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              'MENU APLIKASI AJAK MOBILITAS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: Text('Halaman Utama'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('Halaman Pengenalan'),
            onTap: () {
              Navigator.pushNamed(context, '/intro');
            },
          ),
          ListTile(
            title: Text('Halaman Menu Utama'),
            onTap: () {
              Navigator.pushNamed(context, '/intro');
            },
          ),
          ExpansionTile(
            title: Text('Teknik Mengajak'),
            children: [
              ListTile(
                title: Text('Tunanetra Paham'),
                onTap: () {
                  Navigator.pushNamed(context, '/tunanetra_paham');
                },
              ),
              ListTile(
                title: Text('Tunanetra Belum Paham'),
                onTap: () {
                  Navigator.pushNamed(context, '/tunanetra_belum_paham');
                },
              ),
            ],
          ),
          ListTile(
            title: Text('Teknik Jalan Sempit'),
            onTap: () {
              Navigator.pushNamed(context, '/teknik_jalan_sempit');
            },
          ),
          ListTile(
            title: Text('Teknik Berpindah Pegangan'),
            onTap: () {
              Navigator.pushNamed(context, '/teknik_berpindah_pegangan');
            },
          ),
          ListTile(
            title: Text('Teknik Berbalik Arah'),
            onTap: () {
              Navigator.pushNamed(context, '/teknik_berbalik_arah');
            },
          ),
          ExpansionTile(
            title: Text('Teknik Naik Turun Tangga'),
            children: [
              ListTile(
                title: Text('Turun Tangga'),
                onTap: () {
                  Navigator.pushNamed(context, '/teknik_menaiki_tangga');
                },
              ),
              ListTile(
                title: Text('Naik Tangga'),
                onTap: () {
                  Navigator.pushNamed(context, '/teknik_menuruni_tangga');
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Teknik Naik Turun Kendaraan'),
            children: [
              ListTile(
                title: Text('Naik Kendaraan'),
                onTap: () {
                  Navigator.pushNamed(context, '/teknik_naik_kendaraan');
                },
              ),
              ListTile(
                title: Text('Turun Kendaraan'),
                onTap: () {
                  Navigator.pushNamed(context, '/teknik_turun_kendaraan');
                },
              ),
            ],
          ),
          ListTile(
            title: Text('Mengajak Duduk'),
            onTap: () {
              Navigator.pushNamed(context, '/teknik_mengajak_duduk');
            },
          ),
          ExpansionTile(
            title: Text('Membuka dan Menutup Pintu'),
            children: [
              ListTile(
                title: Text('Membuka Pintu'),
                onTap: () {
                  Navigator.pushNamed(context, '/teknik_membuka_pintu');
                },
              ),
              ListTile(
                title: Text('Menutup Pintu'),
                onTap: () {
                  Navigator.pushNamed(context, '/teknik_menutup_pintu');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
