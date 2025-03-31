import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 18),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maya Ramon',style: TextStyle(color: Colors.grey),),
                      Row(
                        children: [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),  
                          SizedBox(width: 5,),
                          Icon(
                            Icons.wb_sunny,
                            color: const Color.fromARGB(255, 240, 213, 35),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.notification_add,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                  Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: Colors.purple.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: -20,
                    right: -10,
                    child: Container(
                      width: 260,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('X',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('You have slept ', style: TextStyle(color: Colors.white ,  fontSize: 16,fontWeight: FontWeight.w600 ),),
                                SizedBox(width: 2,),
                                Text('09:30' , style: TextStyle(color: Colors.white , fontSize: 20, fontWeight: FontWeight.w600 ),),
                                SizedBox(width: 2,),
                                Text('that is' , style: TextStyle(color: Colors.white, fontSize: 16,  fontWeight: FontWeight.w600),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('above your recommendation', style: TextStyle(color: Colors.white , fontSize: 16, fontWeight: FontWeight.w600 ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Your Sleep Calendar', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Tue', style: TextStyle(color: Colors.grey),),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.shade100,
                      child: Text('22', style: TextStyle(color: Colors.grey),)
                  ),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Text('Wed', style: TextStyle(color: Colors.grey),),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.shade100,
                      child: Text('23', style: TextStyle(color: Colors.grey),)
                  ),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Text('Thu', style: TextStyle(color: Colors.grey),),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Text('24', style: TextStyle(color: Colors.grey),)
                  ),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Text('Fri', style: TextStyle(color: Colors.grey),),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.shade100,
                      child: Text('25', style: TextStyle(color: Colors.grey),)
                  ),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Text('Sat', style: TextStyle(color: Colors.grey),),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.shade100,
                      child: Text('26', style: TextStyle(color: Colors.grey),)
                  ),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Text('Sun', style: TextStyle(color: Colors.grey),),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.shade100,
                      child: Text('27', style: TextStyle(color: Colors.grey),)
                  ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 160,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 228, 240),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 218, 215, 238),
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Icon(
                                    Icons.bed_outlined,
                                    color: const Color.fromARGB(255, 147, 112, 245),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text('Bed Time', style: TextStyle(fontSize:16),),
                        Text('7H and 28Min',style: TextStyle(color: Colors.grey, fontSize: 15),),
                        Icon(
                          Icons.toggle_on,
                           color: Color.fromARGB(255, 147, 112, 245),
                           size: 45,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  height: 155,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 228, 240),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 218, 215, 238),
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Icon(
                                      Icons.alarm_outlined,
                                      color: const Color.fromARGB(255, 147, 112, 245),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          Text(
                            'Alarm',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text('16H and 18Min',style: TextStyle(color: Colors.grey, fontSize: 15),),
                          Icon(
                              Icons.toggle_on,
                               color: Color.fromARGB(255, 147, 112, 245),
                               size: 45,
                            )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 335,
              height: 145,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 228, 240),
                borderRadius: BorderRadius.circular(20)
                
              ),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/sleep.png'),
                      Positioned(
                        top: 18,
                        left: 14,
                        right: 0,
                        child: 
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Have a problem', style: TextStyle(fontSize: 18, color: Colors.grey),),
                            Text('Sleeping?',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 216, 208, 239), 
                                foregroundColor: Color.fromARGB(255, 147, 112, 245), 
                                shape: RoundedRectangleBorder( // Rounded corners
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: (){}, 
                              child: Text('Consult an expert')
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
          
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
        },
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: '',
          ),
        ],
      ),
    );
    
  }
}




