import 'package:flutter/material.dart';
import 'package:ns_connect/dynamiq_msg.dart';
import 'package:ns_connect/statiq_msg.dart';

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("NS CONNECT"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                children: const [
                  CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person_rounded,
                        color: Colors.blue,
                        size: 70,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text("UTILISATEUR")
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.restart_alt, color: Colors.black),
              title: Text("Remise à zéro"),
            ),
            ListTile(
              leading: const Icon(Icons.phonelink_ring, color: Colors.black),
              title: const Text("Connexion Mode"),
              subtitle: Row(
                children: const [
                  Icon(Icons.wifi, color: Colors.black),
                  Switch(value: false, onChanged: null),
                  Icon(Icons.bluetooth, color: Colors.black)
                ],
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text("Se deconnecter"),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Envoi",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => const StatiqMsg()));
              },
              child: Container(
                  padding: const EdgeInsets.all(10),
                  height: size.height * 0.15,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                        color: Colors.white10,
                        width: 3.0,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15.0))),
                  child: const Center(
                      child: Text("Message statique",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20)))),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) => const DynamiqMsg()));
              },
              child: Container(
                  padding: const EdgeInsets.all(10),
                  height: size.height * 0.15,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                        color: Colors.white10,
                        width: 3.0,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15.0))),
                  child: const Center(
                      child: Text("Message Dynamique",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20)))),
            )
          ],
        ),
      ),
    );
  }
}
