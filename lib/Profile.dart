import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool notifcation = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text('Profile'),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 74,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue.shade800,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(4),
                    onTap: () {},
                    title: const Text(
                      'John',
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 35,
                      //  backgroundImage: Icon(Icons.language_outlined),
                    ),
                    trailing: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'General',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Card(
                  elevation: 4,
                  margin: const EdgeInsets.fromLTRB(32, 8, 32, 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                bool _isObscure = true;

                                return AlertDialog(
                                  content: SizedBox(
                                      height: 140,
                                      child: Column(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .grey.shade200,
                                                        offset: const Offset(
                                                            5.0, 5.0),
                                                        blurRadius: 10.0,
                                                        spreadRadius: 2.0)
                                                  ],
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: TextField(
                                                obscureText: _isObscure,
                                                style: const TextStyle(
                                                    fontSize: 17,
                                                    textBaseline:
                                                        TextBaseline.alphabetic,
                                                    height: 0.5,
                                                    fontFamily:
                                                        "Quicksand-Regular",
                                                    fontWeight:
                                                        FontWeight.bold),
                                                decoration: const InputDecoration(
                                                  hintText: 'Your New Password',
                                                  contentPadding:
                                                      EdgeInsets.all(10),
                                                  border: InputBorder.none,
                                                ),
                                              )),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  minimumSize: const Size(120, 40),
                                                  backgroundColor: Colors.red),
                                              onPressed: () {},
                                              child: const Text('Submit'))
                                        ],
                                      )),
                                );
                              });
                        },
                        title: const Text(
                          'Change Password',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        leading: const Icon(
                          Icons.lock_outline,
                          color: Colors.black,
                        ),
                        trailing: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                      ),
                      _buildDivider(),
                      ListTile(
                        onTap: () {},
                        title: const Text(
                          'Change Langage',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        leading: const Icon(
                          Icons.language_outlined,
                          color: Colors.black,
                        ),
                        trailing: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                      ),
                      _buildDivider(),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Notification Settings',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              SwitchListTile(
                value: notifcation,
                onChanged: (val) {
                  setState(() {
                    notifcation = !notifcation;
                  });
                },
                activeColor: Colors.blue.shade800,
                contentPadding: const EdgeInsets.all(0),
                title: const Text('Received notification'),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.blue.shade800,
                child: ListTile(
                  onTap: () async {},
                  title: const Text(
                    'Sign Out',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  leading: const Icon(
                    Icons.doorbell_outlined, color: Colors.red,
                    //  backgroundImage: Icon(Icons.language_outlined),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: const EdgeInsets.only(left: 7), child: const Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      height: 1,
      color: Colors.grey.shade400,
    );
  }

  Widget buildelementCard(BuildContext context, int index) {
    return Container(
        child: const Card(
            child: Row(
      children: [],
    )));
  }
}
