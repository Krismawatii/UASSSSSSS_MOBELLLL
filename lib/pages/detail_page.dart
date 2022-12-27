// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class DetailPage extends StatelessWidget {
//   //const DetailPage({Key key, required this.nim}) : super(key: key);
//    const DetailPage({Key key, required});

//   static const appTitle = 'Home';

//   @override
//   //State<DetailPage> createState() => _DetailPage();
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Column(children: [

//       ]),
//     )
//   }
// }
import 'package:uas_kelompok3/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/database/DbHelper.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:uas_kelompok3/pages/list_data.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({super.key});
  const DetailPage({Key key, required}) : super(key: key);

  static const appTitle = 'Home';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.article),
                child: Text('Isi Data'),
              ),
              Tab(
                icon: Icon(Icons.list),
                child: Text('List Data'),
              ),
            ],
          ),
        ),
        // body: const TabBarView(
        //   children: <Widget>[
        //     detail_page(),
        //     list_data(),
        //   ],
        // ),
      ),
    );
  }

  Widget buttonElevated() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Back", style: TextStyle(fontSize: 20)),
    );
  }
}

// home: Scaffold(
//           body: Container(
//               child: ElevatedButton(
//             onPressed: () {},
//             child: Text("Back", style: TextStyle(fontSize: 20)),
//           ))),
//     );
