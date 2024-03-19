import 'package:flutter/material.dart';
import 'package:mealsapp/course_page.dart';
import 'package:mealsapp/item_detailed.dart';

class SoupsPage extends StatelessWidget {
  const SoupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile.gif',
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CoursePage()));
            },
            child: Image.asset(
              'assets/images/image2.png',
              width: 40,
              height: 40,
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 213, 213, 205),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Appetizers',
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
            soupContainer(context),
            const SizedBox(height: 20),
            soupContainer(context),
            const SizedBox(height: 20),
            soupContainer(context),
            const SizedBox(height: 20),
            soupContainer(context),
            const SizedBox(height: 20),
            soupContainer(context),
            const SizedBox(height: 20),
            soupContainer(context),
            const SizedBox(height: 20),
            soupContainer(context),
            const SizedBox(height: 20),
            const SizedBox(height: 80), // Adjust the height as needed
            Column(
              children: [
                const Text(
                  'Powered by',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Image.asset('assets/images/Imiot Final 14.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget soupContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const ItemDetails()));
                        },
                        child: const Text(
                          'Hot & Sour ', // Placeholder for the soup name
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 0),
                      const Text(
                        'Chicken', // Placeholder for the soup type
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Qty',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 35),
                      Container(
                        width: 80,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 221, 221, 221),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5, // Thin border
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              '-',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.black,
                            ),
                            const Text(
                              '3',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.black,
                            ),
                            const Text(
                              '+',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 80,
              height: 80,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/Rectangle 8 (1).png', // Placeholder for the image path
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





















