// ignore: file_names
// ignore: file_names
import 'package:e_learning/AllCourses.dart';
import 'package:e_learning/CoursePlaylist.dart';
import 'package:e_learning/Filter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Color _color = Colors.white;
  final bool _color_s = false;

  final mail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text('Hello John!'),
          const Text(
            'Find your course',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                height: 55,
                width: 300,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                      // border: Border(
                      //     bottom: BorderSide(color:Colors.grey.shade200)
                      // )
                      ),
                  child: TextField(
                    controller: mail,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.grey,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Material(
                  color: Colors.transparent,
                  child: InkWell(
                      onTap: () async {
                        await Future.delayed(const Duration(milliseconds: 500));

                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => const Filter()));
                      },
                      child: Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 241, 85, 54),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.filter_list,
                          color: Colors.white,
                          size: 33,
                        ),
                      )))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 365,
                height: 190,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 107, 140, 254),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Limited Time Offer',
                      style: TextStyle(color: Colors.white54, fontSize: 15),
                    ),
                    const Text(
                      '30% OFF',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 37,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text('For all courses',
                        style: TextStyle(color: Colors.white54, fontSize: 16)),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
//color: Colors.red.shade300,
                          color: const Color.fromARGB(255, 241, 85, 54),
                          // gradient: LinearGradient(
                          //   begin: Alignment.topRight,
                          //   end: Alignment.bottomLeft,
                          //   colors: <Color>[
                          //     //Colors.orangeAccent,
                          //     Colors.deepOrange.shade300,
                          //   ], // red to yellow
                          // ),
                          //  color: Colors.orange.shade700,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'Get offer Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12),
                      )),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: -20,
                  right: 5,
                  child: Image.asset(
                    'assets/images/alarm-clock.png',
                    width: 160,
                    height: 160,
                  ))
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Courses',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 500));

                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => const AllCourses()));
                },
                child: Ink(
                    height: 18,
                    child: Text(
                      'See All',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      //onTapDown: launch,
                      onTap: () async {
                        launch();
                      },

                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/ui_ux_design.png',
                            width: 170,
                            height: 170,
                          ),
                          const Text(
                            'UX/UI Design',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(
                                '5h 30 min',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Text(
                                '4.9 (522 reviews)',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  )),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.all(10),
                  child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        //onTapDown: launch,
                        onTap: () async {
                          launch();
                        },
                        child: Column(
                          children: [
                            // SizedBox(height: 24,),
                            //Icon(Icons.web,size: 140,color: Colors.blue,),

                            Image.asset(
                              'assets/images/web-development.png',
                              width: 140,
                              height: 140,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Web Development',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Text(
                                  '5h 30 min',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),

                            const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '4.9 (522 reviews)',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                      ))),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const CoursePlaylist()));
                },
                child: Container(
                  width: 170,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/development.png',
                        width: 100,
                        height: 120,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Mobile Development',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.grey,
                            size: 20,
                          ),
                          Text(
                            '5h 30 min',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            '4.9 (522 reviews)',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    // SizedBox(height: 24,),
                    //Icon(Icons.web,size: 140,color: Colors.blue,),

                    Image.asset(
                      'assets/images/python.png',
                      width: 140,
                      height: 140,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Python From A to Z',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                          size: 20,
                        ),
                        Text(
                          '5h 30 min',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),

                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text(
                          '4.9 (522 reviews)',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    )));
  }

  showLoaderDialog(BuildContext context) async {
    AlertDialog alertDialog = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: const Text('Wait for It..'),
          )
        ],
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  Future<void> launch() async {
    await Future.delayed(const Duration(milliseconds: 400));

    showLoaderDialog(context);
    print(context.toString());
    await Future.delayed(const Duration(seconds: 1));

    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (builder) => const CoursePlaylist()));
  }
}
