import 'package:flutter/material.dart';

class MyCardNight extends StatelessWidget {
  const MyCardNight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"), actions: const []),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Card(
                  color: Colors.red,
                  child: Text(
                    "Card With Color",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.red,
                  ),
                  child: Text(
                    "Container with color",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  elevation: 8, // tinggi bayangan
                  color: Colors.yellow,
                  child: Text(
                    "Tinggi bayangan Shadow",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    "Tinggi bayangan Shadow",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Shape Bingkai persegi panjang",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  margin: EdgeInsets.all(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Margin Card",
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.red, width: 2),
                  ),
                  borderOnForeground: true, // false
                  child: Text(
                    "Border tidak menimpa konten",
                    style: TextStyle(fontSize: 10.0),
                  ),
                  // child: Padding(
                  // padding: EdgeInsets.all(8),
                  // child: Text("Border tidak menimpa konten"),
                  // ),
                ),
                SizedBox(height: 5),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Text(
                    "Anti alias clip Card",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  semanticContainer: true,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Semantic true",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  shadowColor: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Shadow Color Card",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Custom border Radius Card",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                //card sederhana
                Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'as an Informatics Engineering student at Global Institute. I always exploring new trends and technologies to refine my skills and make meaningful contributions to the intersection of technology and design.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),

                //avatar card
                Card(
                  elevation: 8,
                  shadowColor: Colors.red,
                  //contoh memeotong gradient melengkung
                  //dan jika tidak digunakan maka akan jadi kotak
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.pinkAccent, Colors.lightBlue],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //cicrle avatar
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 4),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.2),
                                  blurRadius: 10,
                                  //offset (x,y) positif ke kanan
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),

                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage(
                                "assets/images/bubbles1.jpg",
                              ),
                            ),
                          ),
                          SizedBox(height: 10),

                          //text name
                          Text(
                            "Helen Oktaviani",
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),

                          //container BoxDecoration circular
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Informatics Engineering Student',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),

                          //row dengan 3 column
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                              //column 1
                              Column(
                                children: [
                                  Text(
                                    "100",
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              //garis vertical
                              SizedBox(
                                height: 40,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),

                              //column 2
                              Column(
                                children: [
                                  Text(
                                    "8",
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Years",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              //garis vertical
                              SizedBox(
                                height: 40,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),

                              //column 3
                              Column(
                                children: [
                                  Text(
                                    "200",
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Projects",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(Icons.install_desktop_rounded, size: 50),
                        title: Text('Belum ada judul'),
                        subtitle: Text('sebuah judul lagu dari Iwan Fals'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Card dapat di isi berbagai widget seperti text, '
                          'image, button, dan lainnya.',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                //debit card
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.indigo,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //chip icon
                            Icon(
                              Icons.credit_card,
                              color: Colors.white70,
                              size: 32,
                            ),
                            //contactless icon
                            Icon(
                              Icons.contactless,
                              color: Colors.white54,
                              size: 32,
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
