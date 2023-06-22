import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductProvider>(context, listen: false).newProList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Data Displayed",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Consumer<ProductProvider>(builder: (context, value, child) {
        final allpro = value.allProducts;
        return ListView.builder(
            itemCount: allpro.length,
            itemBuilder: (context, index) {
              final todo = allpro[index];
              return Card(
                child: ListTile(
                  subtitle: Text(
                    "${todo.title.toString()}",
                    // style: TextStyle(color: Colors.black),
                  ),
                  leading: CircleAvatar(child: Text("${todo.id.toString()}")),
                  title: Text(
                    "${todo.price.toString()}",
                    // style: TextStyle(color: Colors.black),
                  ),
                  // trailing: Image.network("${todo.id.toString()}"),
                ),
              );
            });
      }),
    );
  }
}
