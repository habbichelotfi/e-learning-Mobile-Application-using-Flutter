import 'package:flutter/material.dart';
import '../models/lesson.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/lesson_tile.dart';

class CoursePlaylist extends StatefulWidget {
  const CoursePlaylist({Key? key}) : super(key: key);

  @override
  _CoursePlaylistState createState() => _CoursePlaylistState();
}

class _CoursePlaylistState extends State<CoursePlaylist> {
  List<bool> isSelected = [true, false];

  final List<Lesson> _lessons = [
    Lesson(
      title: 'Introduction',
      duration: '05:30/12:50',
      isLocked: false,
      order: 1,
      isPlaying: true,
    ),
    Lesson(
      title: 'What is UX?',
      duration: '05:30/12:50',
      isLocked: true,
      order: 2,
    ),
    Lesson(
      title: 'User-Centred Design Process',
      duration: '05:30/12:50',
      isLocked: true,
      order: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(),
                        const SizedBox(height: 35),
                        const Text(
                          'UI/UX:Designing with a User-\nCentered Approach.',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 25),
                        _buildVideoPlayer(size),
                        _buildVideoControls(),
                        const SizedBox(height: 30),
                        _buildToggleButtons(),
                      ],
                    ),
                  ),
                  _buildLessonsList(size),
                  const SizedBox(height: 130), // Spacing for bottom bar
                ],
              ),
            ),
          ),
          _buildBottomBar(size),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomBackButton(),
        const Text(
          'Course Overview',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.favorite, color: Colors.white),
        )
      ],
    );
  }

  Widget _buildVideoPlayer(Size size) {
    return Center(
      child: Container(
        width: size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: Colors.blueAccent,
        ),
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
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Icon(Icons.play_arrow, color: Colors.white, size: 40),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildVideoControls() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(color: Colors.grey),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow),
            ),
          ),
          const Text('05:10/12:50'),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volume_down, color: Colors.grey),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.fullscreen_sharp, color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildToggleButtons() {
    return Center(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Playlist',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 30,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      '65',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 150,
            padding: const EdgeInsets.all(15),
            child: const Text(
              'Descriptions',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          )
        ],
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
        isSelected: isSelected,
      ),
    );
  }

  Widget _buildLessonsList(Size size) {
    return SizedBox(
      width: size.width,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _lessons.length,
        itemBuilder: (context, index) {
          return LessonTile(
            lesson: _lessons[index],
            onTap: () => _showLockedLessonDialog(),
          );
        },
      ),
    );
  }

  void _showLockedLessonDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: 100,
            child: Column(
              children: [
                const Text('You need to complete the previous videos!! '),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Fine!'),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomBar(Size size) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          border: Border.all(color: Colors.grey.shade100),
        ),
        padding: const EdgeInsets.all(20),
        width: size.width,
        height: 130,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$ 29.99',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.blueAccent,
                      size: 20,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('UX&UI was added to your cart')),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 290,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue.shade600,
                    ),
                    child: const Center(
                      child: Text(
                        'Buy Now!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
