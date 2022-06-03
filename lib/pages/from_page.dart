import 'package:flutter/material.dart';

class FromePage extends StatefulWidget {
  const FromePage({Key? key}) : super(key: key);

  @override
  _FromePageState createState() => _FromePageState();
}

class _FromePageState extends State<FromePage> {
  //bool __isObcure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm("Your Name", false),
        buildInputForm('Location', false),
        buildInputForm('Email', false),
        buildInputForm(" Phone", false),
        buildInputForm("Fb Link", true),
        buildInputForm(' Your About ', true)
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: TextFormField(
              //obscureText:  pass ? __isObcure : false;
              decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            //suffixIcon: pass? IconButton(onPressed: (){
            //   setState(() {
            //   _isObcure = ! isObcure;
//});
            // ,},
            //icon: Icon(Icons.visibility_off)),
          )),
        ));
  }
}
