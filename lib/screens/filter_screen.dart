import 'package:flutter/material.dart';
import '../widgets/custom_back_button.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

enum Levels { Alllevels, Beginner, Intermediaire, Confirmed }

class _FilterState extends State<Filter> {
  String dropdownValue = 'Marks';
  List<String> filters = [
    'Marks',
    'Most Recents',
    'By Prices,From Lowest to Highest',
    'By Price From Highest to Lowest'
  ];
  Levels? _character = Levels.Alllevels;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  const SizedBox(height: 15),
                  const Text(
                    '10 000 Courses',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Filter By',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  _buildDropdown(),
                  const SizedBox(height: 20),
                  const Text(
                    'Level',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  _buildLevelsList(),
                  const SizedBox(height: 80), // Space for bottom actions
                ],
              ),
            ),
          ),
          _buildBottomActions(size),
        ],
      ),
    );
  }

  Widget _buildDropdown() {
    return DropdownButton<String>(
      value: dropdownValue,
      isExpanded: true,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: filters.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(fontSize: 18),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildLevelsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLevelRadio('All Levels', Levels.Alllevels),
        _buildLevelRadio('Beginner', Levels.Beginner),
        _buildLevelRadio('Intermediare', Levels.Intermediaire),
        _buildLevelRadio('Confirmed', Levels.Confirmed),
      ],
    );
  }

  Widget _buildLevelRadio(String title, Levels value) {
    return ListTile(
      title: Text(title),
      leading: Radio<Levels>(
        value: value,
        groupValue: _character,
        onChanged: (Levels? newValue) {
          setState(() {
            _character = newValue;
          });
        },
      ),
    );
  }

  Widget _buildBottomActions(Size size) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: size.width,
        height: 70,
        color: Colors.white,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildActionButton('Reset'),
            _buildDivider(),
            _buildActionButton('Apply'),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(String label) {
    return Text(
      label,
      style: TextStyle(fontSize: 18, color: Colors.blueAccent.shade700),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 40,
      width: 1,
      color: Colors.grey.shade400,
    );
  }
}
