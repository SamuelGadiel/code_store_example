import 'package:code_store_example/mock/data.dart';
import 'package:code_store_example/mock/integrations.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Integrations integrations = Integrations(integrationsList: []);

  @override
  void initState() {
    super.initState();

    integrations = Integrations.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: Column(
            //imagem
            // TextButton
            // TextButton
            // TextButton
            // ElevatedButton
            ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 90,
            Row(
              children: const [
                // imagem
                Visibility(
                  visible: widthScreen > 600,
                  replacement: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icons.menu,
                  ),
                  child: Row(
                    children: [
                      // TextButton
                      // TextButton
                      // TextButton
                      // ElevatedButton
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140),
            child: Column(
              children: const [
                // Widget do carrosel,
                // Text
                ListView.builder(itemBuilder: (context, position){
                  if(integrations.integrationsList[position].isExtension){

                    return ExtesionCard(integrations.integrationsList[position])
                  } else{
                    return const SizedBox();
                  }
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
