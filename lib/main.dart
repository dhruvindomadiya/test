import 'package:dfgd/one.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main()

async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: one(),
  ));
}

class one extends StatelessWidget {
  const one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => two(),
      child: kano(),
    );
  }
}

class kano extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    two m=Provider.of(context);


    return Scaffold(
      appBar: AppBar(
        title: Text("container"),
      ),
      body: Column(
        children: [
          TextField(controller: m.t1,),
          TextField(controller: m.t2,),
          ElevatedButton(onPressed: () {
            m.total(m.t1.text,m.t2.text);
          }, child:Text("sum")),
          Text("sum${m.sum}")
        ],
      ),
    );
  }
}
