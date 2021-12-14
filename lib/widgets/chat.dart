import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  TextEditingController controller_user = TextEditingController();
  TextEditingController controller_mensaje = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 812,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Color(0x7f182f3f),
            blurRadius: 100,
            offset: Offset(40, 40),
          ),
        ],
        color: Color(0xff292f3e),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 55,
            top: 607,
            child: Container(
              width: 265,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0x3f000000),
              ),
              padding: const EdgeInsets.only(
                left: 13,
                right: 221,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 31,
                    child: Text(
                      "Write",
                      style: TextStyle(
                        color: Color(0x99ffffff),
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 284.67,
            top: 606,
            child: Container(
              width: 33.65,
              height: 40,
              child: Stack(
                children: [
                  MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      disabledColor: Colors.grey,
                      elevation: 0,
                      color: Colors.cyanAccent.shade100,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 80, vertical: 15),
                          child: Text(
                            'Ingresar',
                            style: TextStyle(color: Colors.white),
                          )),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
