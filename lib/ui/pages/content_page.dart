import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souls_anime/domain/controller/login_controller.dart';
import 'package:souls_anime/ui/pages/chat/chat_page.dart';
import 'package:souls_anime/ui/pages/login_page.dart';
import 'package:souls_anime/widgets/location.dart';
import 'package:souls_anime/widgets/chat.dart';
import 'package:souls_anime/widgets/estados.dart';
import 'package:souls_anime/widgets/noticia_anime.dart';
import 'package:souls_anime/widgets/nuevo_anime.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    NoticiaAnime(),
    NuevoAnime(),
    Estados(),
    ChatScreen(),
    Location(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final LoginController authenticationController = Get.find();
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('Soul Anime'),
          actions: <Widget>[
            // Widgets que  realizan acciones
            IconButton(
                key: const Key("darkBtn"),
                color: Colors.white,
                onPressed: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                },
                icon: const Icon(Icons.brightness_4_rounded)),
            IconButton(
                key: const Key("logoutBtn"),
                color: Colors.white,
                onPressed: () async {
                  await LoginController;
                  authenticationController
                      .logout(); // controla que el logout se haya efectuado
                  // Get.to(() => LoginPage());
                },
                icon: const Icon(
                    Icons.logout)), // se invoca el icono que se desea crear
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.public),
              label: 'Anime',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_agenda),
              label: 'Publicación',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: 'Estados',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city),
              label: 'Location',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}
