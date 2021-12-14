import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souls_anime/domain/controller/login_controller.dart';

class NoticiaAnime extends StatefulWidget {
  NoticiaAnime({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NoticiaAnime> {
  @override
  Widget build(BuildContext context) {
    final LoginController authenticationController = Get.find();
    return Scaffold(
      body: ListView(
        children: [
          noticias(),
          noticias1(),
          noticias2(),
          noticias3(),
        ],
      ),
    );
  }
}

noticias() {
  return Column(
    children: [
      ListTile(
        title: Text("Estreno Sailor Moon Crystal"),
        subtitle: Text(
            "La serie de anime Sailor Moon Crystal. La película está dirigida por Chiaki Kon, escrita por Kazuyuki Fudeyasu, supervisada por Naoko Takeuchi y producida por Toei Animation y Studio Deen. El primer film se estrenó el 8 de enero de 2021 y la segunda el 11 de febrero de 2021.3​"),
        trailing: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('asset/images/Sailor.jpg', fit: BoxFit.cover),
        ),
      ),
      Divider()
    ],
  );
}

noticias1() {
  return Column(
    children: [
      ListTile(
        title: Text("Dead Note Real Life"),
        subtitle: Text(
            "Las primeras dos películas fueron dirigidas por Shūsuke Kaneko, producidas por Nippon Television y distribuidas por Warner Bros Pictures Japan. Una nueva película dirigida por Hideo Nakata fue estrenada en Japón el 9 de febrero de 2008, un spin-off centrando en el personaje de L llamada: Death Note: L Change the World. La secuela, Death Note: Light Up the New World [Cuaderno de la Muerte: Ilumina el Nuevo Mundo], fue dirigida por Shinsuke Sato y lanzada en Japón el 29 de octubre de 2016"),
        trailing: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('asset/images/Note.jpg', fit: BoxFit.cover),
        ),
      ),
      Divider()
    ],
  );
}

noticias2() {
  return Column(
    children: [
      ListTile(
        title: Text("OnePice Final?"),
        subtitle: Text(
            "¿Cuándo termina One Piece? Hace un tiempo el creador de One Piece reveló, para sorpresa de todos los fans del popular anime, que su obra maestra llegaría a una conclusión en unos 5 años. Desde entonces, son muchos los seguidores de la serie los que tratan de descubrir qué podría suceder con la banda de los Piratas del Sombrero de Paja en el final de la serie y, sobre todo, qué es el One Piece"),
        trailing: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('asset/images/One.png', fit: BoxFit.cover),
        ),
      ),
      Divider()
    ],
  );
}

noticias3() {
  return Column(
    children: [
      ListTile(
        title: Text("DragonBall"),
        subtitle: Text(
            "es un manga escrito e ilustrado por Akira Toriyama. Fue publicado originalmente en la revista Shōnen Jump, de la editorial japonesa Shūeisha, entre 1984 y 1995.1​2​ Su trama describe las aventuras de Gokū, un guerrero saiyajin, cuyo fin es proteger a la Tierra de otros seres que quieren conquistarla y exterminar a la humanidad. Conforme transcurre la trama, conoce a otros personajes que le ayudan en este propósito. El nombre de la serie proviene de unas esferas mágicas que al ser reunidas invocan a un dragón que concede deseos. En varias ocasiones resultan útiles tanto para Gokū y sus amigos como para la humanidad, aunque también son procuradas de forma constante por algunos seres malignos."),
        trailing: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('asset/images/dragon.jpg', fit: BoxFit.cover),
        ),
      ),
      Divider()
    ],
  );
}
