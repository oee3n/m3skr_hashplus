import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyHomePage> {
  int count = 0;

  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(222, 255, 192, 203),
        centerTitle: true,
        title: Text(
          "{ولقد نعلم أنك يضيق صدرك بما يقولون ، فسبح بحمد ربک وکٌن من الساجدين واعبد ربك حتى يأتيك اليقين}",
          style: TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.height / 1.50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(222, 255, 192, 203),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 9),
                          blurRadius: 20,
                        )
                      ]),
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(222, 255, 192, 203)),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Transform.translate(
                offset: Offset(1, 9),
                child: Container(
                  width: 190,
                  height: 190,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 9),
                            blurRadius: 20,
                            color: Colors.black)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => counter(),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(222, 255, 192, 203),
                            shape: BoxShape.circle,
                          ),
                        ),
                        style:
                            ElevatedButton.styleFrom(maximumSize: Size(80, 80)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => reset(),
                            child: Icon(Icons.wifi_protected_setup),
                            style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    Color.fromARGB(222, 255, 192, 203)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
