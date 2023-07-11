import 'package:flutter/material.dart';
import 'package:meantalhealthapp/utils/emotion_face_icon.dart';
import 'package:meantalhealthapp/utils/exercise_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.apps_sharp), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: ''),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(children: [
          // Greatings Row.
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Hi Jared
                        const Text(
                          "Hi, Jared",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
          
                        const SizedBox(height: 8),
          
                        // --date
                        Text(
                          "23 Jan, 2021",
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
          
                    // -Notification bell icon
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
          
                const SizedBox(height: 25,),
          
                // Search Bar ROW
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5,),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],),
                  ),
                ),
          
                const SizedBox(height: 25,),
          
                // How do you feel? ROW
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How do you feel?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.more_horiz, color: Colors.white),             
                  ],
                ),
                
                const SizedBox(height: 25,),
                
                // Feedback face Widget
                
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: "😞"),
                        SizedBox(height: 8),
                        Text(
                          "Bad",
                          style: TextStyle(color: Colors.white,),
                        ), 
                      ],
                    ),
          
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: "🙂"),
                        SizedBox(height: 8),
                        Text(
                          "Fine",
                          style: TextStyle(color: Colors.white,),
                        ), 
                      ],
                    ),
          
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: "😊"),
                        SizedBox(height: 8),
                        Text(
                          "Well",
                          style: TextStyle(color: Colors.white,),
                        ), 
                      ],
                    ),
          
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: "😀"),
                        SizedBox(height: 8),
                        Text(
                          "Excellent",
                          style: TextStyle(color: Colors.white,),
                        ), 
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),


          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [

                    const SizedBox(height: 25),

                    // Exercise heading
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
              
                    const SizedBox(height: 20,),

                    // Exercise tiles
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: "Speaking Skills",
                            noOfExercises: 16,
                            color: Colors.orange
                          ),
                          ExerciseTile(
                            icon: Icons.book,
                            exerciseName: "Reading Skills",
                            noOfExercises: 12,
                            color: Colors.blue
                          ),
                        ExerciseTile(
                            icon: Icons.star,
                            exerciseName: "Communication Skills",
                            noOfExercises: 20,
                            color: Colors.pink
                          ),
                        ],
                      ),
                    ),
                  ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
