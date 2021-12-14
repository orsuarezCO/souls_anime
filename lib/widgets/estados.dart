import 'package:flutter/material.dart';
import 'package:souls_anime/use_interfaces/input_decorations.dart';

class Estados extends StatelessWidget {
  const Estados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                hintText: 'Ingrese estado'),
                          ),
                          RaisedButton(
                              onPressed: () {}, child: Text('Publicar'))
                        ],
                      ),
                    );
                  });
            }));
  }
}
