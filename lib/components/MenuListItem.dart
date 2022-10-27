import 'package:flutter/material.dart';
import 'package:lavide/data/Levels.dart';

class MenuListItem extends StatelessWidget {
  MenuListItem({
    Key? key,
    this.title = "",
    this.description = "",
    this.level = LearningLevel.Easy,
    this.onTap,
  }) : super(key: key);

  String title = "";
  String description = "";
  int level = LearningLevel.Easy;
  final Function? onTap;

  String displayLevel(int level) {
    if (level == LearningLevel.Hard) {
      return "Hard";
    } else if (level == LearningLevel.Medium) {
      return "Medium";
    } else {
      return "Easy";
    }
  }

  Color displayLevelColor(int level) {
    if (level == LearningLevel.Hard) {
      return Colors.red;
    } else if (level == LearningLevel.Medium) {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Menu tapped!");
        this.onTap!();
      },
      child: Card(
        margin:
        const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    this.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5.0,),
                  Text(displayLevel(level), style: TextStyle(color: displayLevelColor(level)),)
                ],
              ),
              const SizedBox(
                height: 3.0,
              ),
              Text(
                this.description,
                style: TextStyle(color: Colors.grey.shade600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
