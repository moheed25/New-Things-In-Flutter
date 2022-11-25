import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({Key? key, required this.title, required this.Image})
      : super(key: key);
  final title;
  final Image;

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Center(
                child: Image.asset(
                  widget.Image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text("this is a description of  ${widget.title}"),
            )
          ],
        ),
      ),
    );
  }
}
