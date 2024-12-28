import 'dart:convert';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shopping cart app'),
        ),
        body: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'our products',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: height * .3,
                child: PageView(
                  children: [
                    Container(
                      child: Image.network(
                        'https://plus.unsplash.com/premium_photo-1711051475117-f3a4d3ff6778?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Image.network(
                          'https://images.unsplash.com/photo-1484788984921-03950022c9ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGFwdG9wfGVufDB8fDB8fHww',
                          fit: BoxFit.cover),
                    ),
                    Container(
                      child: Image.network(
                          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: height * .25,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: [
                    Builder(builder: (context) {
                      return Container(
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.network(
                              'https://images.unsplash.com/photo-1484788984921-03950022c9ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGFwdG9wfGVufDB8fDB8fHww',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: const Color.fromARGB(255, 17, 156, 255),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Laptop 1'),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        final snackBar = SnackBar(
                                          content:
                                              const Text('Item added to cart!'),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      },
                                      child: Icon(Icons.shop))
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                    Builder(builder: (context) {
                      return Container(
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.network(
                              'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: const Color.fromARGB(255, 17, 156, 255),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Laptop 2'),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        final snackBar = SnackBar(
                                          content:
                                              const Text('Item added to cart!'),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      },
                                      child: Icon(Icons.shop))
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hot Offers',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: height * .25,
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: width * 0.55,
                      height: height * 0.55,
                      child: Column(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            fit: BoxFit.cover,
                          ),
                          Text('laptop')
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
