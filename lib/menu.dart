import 'package:flutter/material.dart';
import 'package:gaytan/inicio.dart';
import 'package:gaytan/login.dart';
import 'package:gaytan/catalogo.dart';
import 'package:gaytan/registro1.dart';
import 'package:gaytan/registro2.dart';

class Menu extends StatefulWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int index = 0;
  final screens = [
    Rebe(),
    Rbk(),
    Catalogo(),
    Registro1(),
    Registro2(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBar(
          height: 60,
          backgroundColor: Color(0x8CB7ECE6),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: 'inicio'),
            NavigationDestination(icon: Icon(Icons.contact_page), label: 'login'),
            NavigationDestination(icon: Icon(Icons.hotel), label: 'Catalogo'),
            NavigationDestination(icon: Icon(Icons.contact_mail_outlined), label: 'Registro1'),
            NavigationDestination(icon: Icon(Icons.contact_mail_sharp), label: 'Registro2'),
          ],
        ),
      );
}
