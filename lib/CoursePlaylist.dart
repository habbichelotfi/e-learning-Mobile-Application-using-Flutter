import 'package:flutter/material.dart';

class CoursePlaylist extends StatefulWidget {
  const CoursePlaylist({Key? key}) : super(key: key);

  @override
  _CoursePlaylistState createState() => _CoursePlaylistState();
}

class _CoursePlaylistState extends State<CoursePlaylist> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      children: [
        SafeArea(
            child: SingleChildScrollView(
                child: SizedBox(
          height: size.height,
          child: Column(children: [
            Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () async {
                                await Future.delayed(
                                    const Duration(milliseconds: 300));

                                Navigator.pop(context);
                              },
                              child: Ink(
                                  child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade300),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: const Icon(
                                        Icons.arrow_back_ios_outlined,
                                        color: Colors.grey,
                                        size: 15,
                                      )))),
                          const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Course Overview',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              )),
                          Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        'UI/UX:Designing with a User-\nCentered Approach.',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                          child: Container(
                        width: size.width,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            color: Colors.blueAccent),
                        child: Stack(
                          children: [
                            Image.asset('assets/images/u.png'),
                            Positioned(
                                top: 80,
                                left: 157,
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white10,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ))
                          ],
                        ),
                      )),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                                25.0) //                 <--- border radius here
                                            ),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.play_arrow))),
                                const Text('05:10/12:50'),
                                Container(
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.volume_down,
                                              color: Colors.grey)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.fullscreen_sharp,
                                              color: Colors.black))
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: ToggleButtons(
                        disabledColor: Colors.grey,
                        selectedColor: Colors.white,
                        borderWidth: 2,
                        borderRadius: BorderRadius.circular(20),
                        children: <Widget>[
                          Container(
                              width: 150,
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text(
                                      'Playlist',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                        width: 30,
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade50,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Center(
                                          child: Text(
                                            '65',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                          ),
                                        ))
                                  ])),
                          Container(
                              width: 150,
                              padding: const EdgeInsets.all(15),
                              child: const Text('Descriptions',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)))
                        ],
                        onPressed: (int index) {
                          setState(() {
                            isSelected[index] = !isSelected[index];
                          });
                        },
                        isSelected: isSelected,
                      )),
                    ])),
            SizedBox(
                width: size.width,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      tileColor: Colors.lightBlue.shade50,
                      leading: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueAccent),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          )),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Introduction',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('05:30/12:50',
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                  content: SizedBox(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          const Text(
                                              'You need to complete the previous videos!! '),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Fine!'))
                                        ],
                                      )));
                            });
                      },
                      leading: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade400),
                              color: Colors.white),
                          child: const Center(
                              child: Text(
                            '2',
                            style: TextStyle(fontSize: 16),
                          ))),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Text('What is UX?'),
                          SizedBox(
                            height: 7,
                          ),
                          Text('05:30/12:50'),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.lock),
                    ),
                    ListTile(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                  content: SizedBox(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          const Text(
                                              'You need to complete the previous videos!! '),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Fine!'))
                                        ],
                                      )));
                            });
                      },
                      leading: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade400),
                              color: Colors.white),
                          child: const Center(
                              child: Text(
                            '3',
                            style: TextStyle(fontSize: 16),
                          ))),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Text('User-Centred Design Process'),
                          SizedBox(
                            height: 7,
                          ),
                          Text('05:30/12:50'),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.lock),
                    )
                  ],
                ))
          ]),
        ))),
        Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
                width: size.width,
                height: 130,
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                        border: Border.all(color: Colors.grey.shade100)),
                    padding: const EdgeInsets.all(20),
                    width: size.width,
                    height: 130,
                    child: Column(children: [
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\$ 29.99',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () async {
                                await Future.delayed(
                                    const Duration(milliseconds: 300));
                              },
                              child: Ink(
                                  child: Container(
                                width: 45,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 45,
                                child: const Icon(
                                  Icons.shopping_cart,
                                  color: Colors.blueAccent,
                                  size: 20,
                                ),
                              ))),
                          InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('UX&UI was added to your cart'),
                                ));
                              },
                              child: Ink(
                                  child: Container(
                                padding: const EdgeInsets.all(10),
                                width: 290,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blue.shade600),
                                child: const Center(
                                    child: Text(
                                  'Buy Now!',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                              )))
                        ],
                      )
                    ]),
                  )
                ])))
      ],
    ));
  }
}

class BNBCustomerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.65, 0, size.width * 0.40, 20);
    // path.arcToPoint(Offset(size.width*0.60,20),radius: Radius.circular(10),clockwise: false);
    path.quadraticBezierTo(size.width * 0.1, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.8, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
