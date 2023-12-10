import 'package:flutter/material.dart';

class LastBody extends StatefulWidget {
  const LastBody({Key? key}) : super(key: key);

  @override
  State<LastBody> createState() => _LastBodyState();
}

class _LastBodyState extends State<LastBody> {
  List<bool> isSelected = List.generate(8, (index) => false);
  List<String> stringArray = [
    "Bussiness\nDevelopment",
    "TeleCaller/\nBPO",
    "Graphic\nDesigner",
    "Technology",
    "TeleCaller/\nBPO",
    "TeleCaller/\nBPO",
    "TeleCaller/\nBPO",
    "TeleCaller/\nBPO",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Selection'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: Column(
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 8; i++)
                      if (isSelected[i])
                        Expanded(
                          child: Card(
                            shape: const CircleBorder(side: BorderSide.none),
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assests/images/img-$i.png',
                                    width: 20,
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                  ],
                ),
                const Text(
                  'Let\'s start by selecting\nYour Area of Interest',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 610,
            color: Colors.blue.shade900,
            width: double.infinity,
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Choose Your Category",
                  style: TextStyle(color: Colors.white, fontSize: 26),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "You have to choose at least one category",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                Container(
                  color: Colors.white,
                  height: 60,
                  margin: const EdgeInsets.all(12),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          label: Text(
                            "Search",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          counterText: "",
                          border: InputBorder.none),
                      keyboardType: TextInputType.text,
                      maxLength: 10,
                    ),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 2; i++)
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected[i] = !isSelected[i];
                            });
                          },
                          child: Card(
                            margin: const EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: isSelected[i] ? Colors.green : Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assests/images/img-$i.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    stringArray[i].toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    for (int i = 2; i < 4; i++)
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected[i] = !isSelected[i];
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            margin: const EdgeInsets.all(20),
                            color: isSelected[i] ? Colors.green : Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assests/images/img-$i.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    stringArray[i].toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    for (int i = 4; i < 6; i++)
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected[i] = !isSelected[i];
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            margin: const EdgeInsets.all(20),
                            color: isSelected[i] ? Colors.green : Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assests/images/img-$i.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    stringArray[i].toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    for (int i = 6; i < 8; i++)
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected[i] = !isSelected[i];
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            margin: const EdgeInsets.all(20),
                            color: isSelected[i] ? Colors.green : Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assests/images/img-$i.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    stringArray[i].toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  color: Colors.blue.shade900,
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("DONE"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
