import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_examples/models/task_date.dart';
import 'package:state_management_examples/screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskDate(),
      child: MaterialApp(
        home: TaskScreen(
        ),
      ),
    );
  }
}






//     return ChangeNotifierProvider<Data>(
//       builder: (context) => Data(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: MyText(),
//           ),
//           body: Level1(),
//         ),
//       ),
//     );
//   }
// }
//
// class Level1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Level2(),
//     );
//   }
// }
//
// class Level2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         MyTextField(),
//         Level3(),
//       ],
//     );
//   }
// }
//
// class Level3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(Provider.of<Data>(context).data);
//   }
// }
//
// class MyText extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(Provider.of<Data>(context, listen: false).data);
//   }
// }
//
// class MyTextField extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onChanged: (newText) {
//         Provider.of<Data>(context).changeString(newText);
//       },
//     );
//   }
// }
//
// class Data extends ChangeNotifier {
//   String data = 'Some data';
//
//   void changeString(String newString) {
//     data = newString;
//     notifyListeners();
//   }
// }
