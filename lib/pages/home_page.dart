import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final base_url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=';
  var datalist = [];
  final controller = TextEditingController();

  Future<void> getData(String arg) async {
    final response = await http.get(Uri.parse(base_url + arg));
    final responseJson = json.decode(response.body);

    setState(() {
      datalist = responseJson['drinks'];
    });
  }

  @override
  void initState() {
    super.initState();
    getData('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: const InputDecoration(
            hintText: 'Search', hintStyle: TextStyle(color: Colors.white)),
      )),
      body: ListView.builder(
          itemCount: datalist.length,
          itemBuilder: (c, i) {
            return Column(
              children: [
                ListTile(
                  title: Text(datalist[i].toString()),
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search_rounded),
        onPressed: () => getData(controller.text),
      ),
    );
  }
}
