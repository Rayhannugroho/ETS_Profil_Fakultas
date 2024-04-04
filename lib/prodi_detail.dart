import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prodi.dart';

class UserDetailsPage extends StatelessWidget {
  final Prodi prodi;

  const UserDetailsPage({Key? key, required this.prodi}) : super(key: key);

  // Method untuk membuka URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Program Studi'),
    ),
    body: SingleChildScrollView(
      child: Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(prodi.logo),
              ),
              SizedBox(height: 20),
              Text(
                prodi.username,
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              Text(
                prodi.profil,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                prodi.visiMisi,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                prodi.akreditasi,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                prodi.korprodi,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                prodi.dosen,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                prodi.prestasimahasiswa,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _launchURL(prodi.website);
                },
                child: Text(
                  prodi.website,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


}
