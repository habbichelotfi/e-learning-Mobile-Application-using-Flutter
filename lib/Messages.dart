import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20),
              child: const Center(
                  child: Text(
                'Mark All as read',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              )))
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: 74,
                child: const Row(children: [
                  CircleAvatar(backgroundColor: Colors.black, radius: 30
                      //  backgroundImage: Icon(Icons.language_outlined),
                      ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ralph Edwars',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text('5 min ago')
                          ]),
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ]),
              ),
              _buildDivider(),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: size.width,
                height: 74,
                child: const Row(children: [
                  CircleAvatar(backgroundColor: Colors.black, radius: 30
                      //  backgroundImage: Icon(Icons.language_outlined),
                      ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ralph Edwars',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text('5 min ago')
                          ]),
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ]),
              ),
              _buildDivider(),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: size.width,
                height: 74,
                child: const Row(children: [
                  CircleAvatar(backgroundColor: Colors.black, radius: 30
                      //  backgroundImage: Icon(Icons.language_outlined),
                      ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ralph Edwars',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text('5 min ago')
                          ]),
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ]),
              ),
              _buildDivider(),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: size.width,
                height: 74,
                child: const Row(children: [
                  CircleAvatar(backgroundColor: Colors.black, radius: 30
                      //  backgroundImage: Icon(Icons.language_outlined),
                      ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ralph Edwars',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text('5 min ago')
                          ]),
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ]),
              ),
              _buildDivider(),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: size.width,
                height: 74,
                child: const Row(children: [
                  CircleAvatar(backgroundColor: Colors.black, radius: 30
                      //  backgroundImage: Icon(Icons.language_outlined),
                      ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ralph Edwars',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text('5 min ago')
                          ]),
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ]),
              ),
              _buildDivider(),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: size.width,
                height: 74,
                child: const Row(children: [
                  CircleAvatar(backgroundColor: Colors.black, radius: 30
                      //  backgroundImage: Icon(Icons.language_outlined),
                      ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ralph Edwars',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text('5 min ago')
                          ]),
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ]),
              ),
              _buildDivider(),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: size.width,
                height: 74,
                child: const Row(children: [
                  CircleAvatar(backgroundColor: Colors.black, radius: 30
                      //  backgroundImage: Icon(Icons.language_outlined),
                      ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ralph Edwars',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text('5 min ago')
                          ]),
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ]),
              )
            ],
          )),
    );
  }

  Container _buildDivider() {
    return Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey.shade400,
    );
  }
}
