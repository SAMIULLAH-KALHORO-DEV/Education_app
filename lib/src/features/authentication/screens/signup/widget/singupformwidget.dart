import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';



class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFomrHeight - 10),
      child: Form(
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text("Full Name"),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.teal.shade900,
              ),
              labelStyle: TextStyle(color: Colors.teal.shade900),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2.0, color: Colors.teal.shade900)),
            ),
          ),
          const SizedBox(height: tDefaultSize - 10),
          TextFormField(
            decoration: InputDecoration(
              label: Text("E-Mail"),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.teal.shade900,
              ),
              labelStyle: TextStyle(color: Colors.teal.shade900),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2.0, color: Colors.teal.shade900)),
            ),
          ),
          const SizedBox(height: tDefaultSize - 10),
          TextFormField(
            decoration: InputDecoration(
              label: Text("Phone No"),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.teal.shade900,
              ),
              labelStyle: TextStyle(color: Colors.teal.shade900),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2.0, color: Colors.teal.shade900)),
            ),
          ),
          const SizedBox(height: tDefaultSize - 10),
          TextFormField(
            decoration: InputDecoration(
              label: Text("Passowrd"),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.teal.shade900,
              ),
              labelStyle: TextStyle(color: Colors.teal.shade900),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2.0, color: Colors.teal.shade900)),
            ),
          ),
          const SizedBox(height: tDefaultSize - 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: Text(tSignup.toUpperCase())),
          ),
        ]),
      ),
    );
  }
}
