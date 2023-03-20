import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter something';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter something';
                            }
                            return null;
                          },
                        ),
                        ElevatedButton(
                            onPressed: () {
                              print(_formKey.currentState);
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("Ты кнш крут")));
                              }
                            },
                            child: const Text('Validate'))
                      ]),
                ))));
  }
}

// style: TextStyle(color: Colors.white54),
//                                     decoration: InputDecoration(
//                                         enabledBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(
//                                               width: 3, color: Colors.white54),
//                                         ),
//                                         focusedBorder: UnderlineInputBorder(
//                                             borderSide: BorderSide(
//                                                 width: 3,
//                                                 color: Colors.white54)),
//                                         hintText: "Введите логин",
//                                         hintStyle: TextStyle(
//                                             fontSize: 16.0,
//                                             color: Colors.white54),
//                                         prefixIcon: Icon(
//                                           Icons.alternate_email,
//                                           size: 28,
//                                         ),
//                                         prefixIconColor: Colors.white54
