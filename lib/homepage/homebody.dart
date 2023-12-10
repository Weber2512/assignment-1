import 'package:assignment_app/lastscreen/lastbody.dart';
import 'package:flutter/material.dart';

class Homebody extends StatefulWidget {
  const Homebody({super.key});

  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  final List<String> _gender = [
    'Male',
    'Female',
  ];
  void nextpage(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LastBody()));
  }
  final _formkey = GlobalKey<FormState>();
  void _saveItem(){
    if(_formkey.currentState!.validate()){
      nextpage(context);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Title(
                color: Colors.black,
                child: const Text(
                  'Let\'s create your Profile',
                  style: TextStyle(
                    fontSize: 38,
                    height: 1.3,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                )),
            Image.asset(
              'assests/images/img-1.png',
              width: 250,
              height: 250,
              alignment: Alignment.center,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      suffixIcon:
                          Icon(Icons.person, color: Colors.green, size: 30),
                      label: Text("Full Name"),
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    maxLength: 50,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.trim().length <= 1) {
                        return 'Invalid Name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.calendar_month,
                          color: Colors.green, size: 30),
                      label: Text("Enter your age"),
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          int.tryParse(value) == null ||
                          int.tryParse(value)! <= 0) {
                        return 'Invalid Age';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField(
                    items: [
                      for (final i in _gender)
                        DropdownMenuItem(
                          value: i,
                          child: Text(i),
                        )
                    ],
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      label: Text(
                        'Gender',
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Job City"),
                      suffixIcon: Icon(
                        Icons.business,
                        color: Colors.green,
                      ),
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    maxLength: 50,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.trim().length <= 1) {
                        return 'Invalid City';
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: _saveItem,
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Set background color to green
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Optional: Set border radius
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.all(10.0), // Set padding for the label
                child: const Row(
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.arrow_right_alt)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
