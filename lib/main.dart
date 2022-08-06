import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String r1="cricket";
  String r2="khokho";
  String r3="music";
  String grpvalue="";


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                onChanged: (value) {
                  setState(() {
                    grpvalue=value as String;
                  });
                },
                groupValue: grpvalue,
                value: r1,
              ),
              Text(r1),
            ],
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(r2),
            onChanged: (value) {
              setState(() {
                grpvalue=value as String;
              });
            },
            groupValue: grpvalue,
            value: r2,
          ),
          RadioListTile(
            title: Text(r3),
            onChanged: (value) {
              setState(() {
                grpvalue=value as String;
              });
            },
            groupValue: grpvalue,
            value: r3,
          ),
          ElevatedButton(onPressed: () {

            print(grpvalue);

          }, child: Text("Submit"))
        ],
      ),
    );
  }
}

