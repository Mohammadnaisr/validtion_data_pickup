import 'package:flutter/material.dart';

class Contactfrom extends StatefulWidget {
  Contactfrom({super.key});
  @override
  State<Contactfrom> createState() => _ContactfromState();
}

class _ContactfromState extends State<Contactfrom> {
  @override
  final _formkey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Phone = TextEditingController();
  List storeinfo = ['', '', ''];
  void _submitForm() {
    if (_formkey.currentState!.validate()) {
      setState(() {
        username;
        Password;
        Phone;
      });

      storeinfo[0] = username.text;
      storeinfo[1] = Password.text;
      storeinfo[2] = Phone.text;
      username.clear();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: username,
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  decoration: InputDecoration(
                      labelText: "Username or Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "The field is empty";
                    } else
                      return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: Password,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: Phone,
                  decoration: InputDecoration(
                      labelText: "Phone No",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: _submitForm,
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Your username is : ${storeinfo[0]}"),
                Text("Your Password is : ${storeinfo[1]}"),
                Text("Your phone is : ${storeinfo[2]}"),
              ],
            ),
          )),
    );
  }
}
