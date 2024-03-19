import 'package:flutter/material.dart';
import 'package:mealsapp/course_page.dart';
import 'package:mealsapp/home_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        actions: [
          ClipOval(
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                'assets/images/profile.gif',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        leading: GestureDetector(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                    },
          child: Image.asset(
            'assets/images/image2.png',
            width: 40,
            height: 40,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 213, 213, 205),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select a Menu Category',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: GestureDetector(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CoursePage()));
                    },
                          child: Image.asset(
                            'assets/images/Rectangle 8.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        left: 17,
                        right: 17,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          color: Colors.white,
                          child: const Text(
                            'Non-Veg',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 30.0),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child:GestureDetector(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CoursePage()));
                    },
                          child: Image.asset(
                            'assets/images/Rectangle 8.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        left: 17,
                        right: 17,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          color: Colors.white,
                           child: const Align(
              alignment: Alignment.center,
                          child: Text(
                            'Veg',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                       Center(
                       child: GestureDetector(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CoursePage()));
                    },
                          child: Image.asset(
                            'assets/images/Rectangle 8.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        left: 17,
                        right: 17,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          color: Colors.white,
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Mixed',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 150),
          SizedBox(
            height: 50,
            child: Container(
              width: 320,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Center(
                child: Text(
                  'Customize Menu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Column(
            children: [
              const Text(
                'Powered by',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              Image.asset('assets/images/Imiot Final 14.png'),
            ],
          ),
        ],
      ),
    );
  }
}

