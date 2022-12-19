import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  final txt1 = TextEditingController();
  final txt2 = TextEditingController();
  @override
  Widget build(Object context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("UAS_KELOMPOK3"),
              bottom: const TabBar(
                tabs: [
                  Tab(text: "Biodata"),
                  Tab(text: "List Biodata"),
                ],
              ),
            ),
          ),
        ));
  }

  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Uas Mobile'),
  //       ),
  //       body: (
  //         children: [
  //           Container(
  //             child: Text(
  //               'BIODATA',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 fontWeight: FontWeight.bold,
  //                 letterSpacing: 1.5,
  //               ),
  //             ),
  //             margin: const EdgeInsets.only(top: 20),
  //           ),
  //           Container(
  //             child: TextField(
  //               decoration: InputDecoration(label: Text('NIM :')),
  //               keyboardType: TextInputType.number,
  //               inputFormatters: [FilteringTextInputFormatter.digitsOnly],
  //               controller: txt1,
  //             ),
  //             padding: const EdgeInsets.only(left: 5, right: 5),
  //           ),
  //           Container(
  //             child: TextField(
  //               decoration: InputDecoration(label: Text('Nama :')),
  //               controller: txt2,
  //             ),
  //             margin: const EdgeInsets.only(top: 20),
  //             padding: const EdgeInsets.only(left: 5, right: 5),
  //           ),
  //           Container(
  //             child: ElevatedButton(
  //               child: Text("Proses"),
  //               onPressed: () {},
  //             ),
  //             margin: const EdgeInsets.only(top: 20),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
//}
}
