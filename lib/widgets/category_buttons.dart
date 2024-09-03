import 'package:flutter/material.dart';

class CategoryButtons extends StatefulWidget {
  final List<String> categories;
  final Function(int) onSelected;

  const CategoryButtons({
    Key? key,
    required this.categories,
    required this.onSelected,
  }) : super(key: key);

  @override
  _CategoryButtonsState createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.categories.length, (index) {
          final bool isSelected = _selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                  widget.onSelected(_selectedIndex);
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue : Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  widget.categories[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
