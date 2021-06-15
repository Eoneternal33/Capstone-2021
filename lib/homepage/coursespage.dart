import 'package:flutter/material.dart';

import 'package:capstone/widgets/category_item.dart';
import '../dummy_data.dart';

class Courses extends StatelessWidget {
  // const Courses({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nana\'s Green Box'),
      ),
          body: ListView(
          padding: const EdgeInsets.all(25),
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                  catData.id,
                  catData.title,
                ),
              )
              .toList(),
         
        ),
    );
  }
}






//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: DUMMY_CATEGORIES.length ,
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//           height: 50,
//           child: 
//           ),
//         );
//       });
//       // itemBuilder: DUMMY_CATEGORIES.map(
//       //         (catData) => CategoryItem(
//       //           catData.id,
//       //           catData.title,
//       //         ),
//       //       )
//     );
//   }
// }
