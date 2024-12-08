import 'package:flutter/material.dart';
import 'package:first_practice/utilis/text_style.dart';
import 'package:first_practice/utilis/text.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});
  @override
  State<homePage> createState() => _homePageState();
}
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "search"
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: 400,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage("assets/images/doctor_20.JPG"),
              fit: BoxFit.cover,
              )
            ),
          ),
              Row(
                children: [
                  Container(
                    child: RichText(text: TextSpan(
                        text: MyString.forthText,
                        style: regularTextStyle.copyWith(fontSize: 20,),
                        children: [
                          TextSpan(
                            text: MyString.fiftText,
                            style: regularTextStyle.copyWith(fontSize: 14,color: Colors.red),
                          )
                        ]
                    )
                    ),
                   margin: EdgeInsets.fromLTRB(15, 2, 2, 2),
                  ),
                ],
              ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(3),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("assets/images/1.JPG"),
                      fit: BoxFit.cover,
                      )
                    ),
                    
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(3),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("assets/images/2.JPG"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(3),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("assets/images/3.jpg"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(3),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("assets/images/doctor.jpg"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 2, 2),
                  child: Text("Medicine \n Expert",style: doctorExpert,),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 2, 2),
                    child: Text("Dentist \n Expert",style:doctorExpert,),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 2, 2),
                    child: Text("Neuro \n Expert",style: doctorExpert,),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 0, 2, 2),
                    child: Text("Eye \n Expert",style: doctorExpert,),
                  ),
                ],
              ),
            ],
          ),

          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
              child:Text("Available Doctor",style: regularTextStyle.copyWith(fontSize: 20),),
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage("https://imgs.search.brave.com/-WAL0mmwzCX40ZP5lbt99NTBXtmCp20GjINaUoVWwuM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTI5/MjAxNTIxNC9waG90/by9wb3J0cmFpdC1m/ZW1hbGUtZG9jdG9y/LXN0b2NrLXBob3Rv/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1ucjRYYVduUlBR/bldxd2h6YWhhalpo/c2tJREcxeUs5RG1J/dGVWNWdwVU9JPQ"),
                        ),
                       title: Text("Jacob Jones",style: doctorExpert.copyWith(fontSize: 16),),
                        subtitle: Text("Dental Surgeon"),
                        trailing: ElevatedButton(onPressed: (){},
                            child: Text("Book Appoinment")
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/3.jpg"),
                        ),
                        title: Text("John Albert",style: doctorExpert.copyWith(fontSize: 16),),
                        subtitle: Text("Medicin Surgeon"),
                        trailing: ElevatedButton(onPressed: (){},
                            child: Text("Book Appoinment")),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/doctor.jpg"),
                        ),
                        title: Text("Alexander",style: doctorExpert.copyWith(fontSize: 16),),
                        subtitle: Text("Neuro Surgeon"),
                        trailing: ElevatedButton(onPressed: (){},
                            child: Text("Book Appoinment")
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book_online_sharp),label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}
