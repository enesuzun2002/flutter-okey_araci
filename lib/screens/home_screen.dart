import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okey_araci/helper_funcs/funcs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Functions funcs = Get.put(Functions());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfa"),
        centerTitle: true,
      ),
      body: Column(children: [
        ElevatedButton(
          child: const Text("Zar at"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    "Zar atıldı, ${funcs.rollDice()}'e ${funcs.rollDice()} geldi.")));
          },
        )
      ]),
    );
  }
}
