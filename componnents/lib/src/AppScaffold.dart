import 'package:flutter/material.dart';

abstract class AppScaffold extends StatelessWidget {
  Widget createBody();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: createBody(),
    );
  }
}
