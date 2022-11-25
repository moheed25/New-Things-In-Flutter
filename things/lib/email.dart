import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  int badge = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                child: Icon(
                  Icons.mail_outline_outlined,
                  size: 48,
                ),
              ),
              Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      badge.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    badge++;
                  });
                },
                child: Text("Add")),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    badge--;
                    badge = 0;
                  });
                },
                child: Text("Delete")),
          )
        ]),
      ),
    );
  }
}
