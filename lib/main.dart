import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'profil_detail.dart';
import 'prodi.dart';
import 'prodi_detail.dart';
void main() {
  runApp(const FakultasApp());
}

class FakultasApp extends StatelessWidget {
  const FakultasApp({Key? key}) : super(key: key);
  static const MaterialColor white = MaterialColor(0xFFFFFFFF, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas Ilmu Sosial Dan Ilmu Politik',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Fakultas Ilmu Sosial Dan Ilmu Politik'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showFullDescription = false;

  // Metode untuk membuka laman web
  Future<void> _launchWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Metode untuk membuka email
  Future<void> _launchEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              height: 20,
              child: Row(
                children: [
                  Image.asset('assets/tutt.jpg'),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Image.asset('assets/fisip.png'),
                ],
              ),
            ),
          ],
        ),
        actions: [
  IconButton(
    onPressed: () {
      _launchWebsite('https://fisip.upnjatim.ac.id/');
    },
    icon: Column(
      children: [
        Icon(Icons.language),
        Text(
          'https://fisip.upnjatim.ac.id/',
          style: TextStyle(fontSize: 10),
        ),
      ],
    ),
  ),
  IconButton(
    onPressed: () {
      _launchEmail('fisip@upnjatim.ac.id');
    },
    icon: Column(
      children: [
        Icon(Icons.email),
        Text(
          'fisip@upnjatim.ac.id',
          style: TextStyle(fontSize: 10),
        ),
      ],
    ),
  ),
],

      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Image.asset(
                    'assets/fisipp.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        showFullDescription
                            ? ' Fakultas Ilmu Sosial dan Ilmu Politik diawali dengan berdirinya Fakultas Ilmu Administrasi Negara dan Administrasi Niaga. Satu tahun kemudian Fakultas Ilmu Administrasi membuka satu jurusan baru yaitu jurusan Ilmu Komunikasi pada tahun ajaran 1994/1995. Dalam perkembangan selanjutnya terbit Surat Keputusan Rektor tentang Pergantian nama Fakultas Ilmu Administrasi menjadi Fakultas Ilmu Sosial dan Ilmu Politik.'
                            : ' Fakultas Ilmu Sosial dan Ilmu Politik diawali dengan berdirinya Fakultas Ilmu Administrasi Negara dan Administrasi Niaga.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          shadows: [
                            Shadow(
                              blurRadius: 3.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showFullDescription = !showFullDescription;
                            });
                          },
                          child: Text(showFullDescription ? 'Tutup' : 'Lihat Selengkapnya'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(user.logo),
                      ),
                      title: Text(
                        user.username,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        user.profil,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserDetailsPage(prodi: user),
                        ));
                      },
                    ),
                  );
                },
              ),
            ),
          ),
                    Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.yellow,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Card(
                                elevation: 4,
                                margin: EdgeInsets.all(16),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 28,
                                        backgroundImage: AssetImage('assets/saya.jpg'),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Rayhan Cahyo Aji Nugroho',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
           );
        }
     }