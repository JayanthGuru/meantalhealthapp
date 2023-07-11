import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final IconData icon;
  final String exerciseName;
  final int noOfExercises;
  final Color color;
  
  const ExerciseTile({
    super.key,
    required this.icon,
    required this.exerciseName,
    required this.noOfExercises,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(
                3.0,
                5.0,
              ), //Offset
              blurRadius: 5.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              //icon
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                    padding: const EdgeInsets.all(16),
                    color: color,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    )
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //tile heading
                  Text(
                    exerciseName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  //tile subheading
                  Text(
                    "$noOfExercises Exercises",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ]),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
