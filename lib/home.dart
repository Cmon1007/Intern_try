import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller=TextEditingController();
    String?_value="High Priority";
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title: const  Text("To DO"),
            leading: IconButton(onPressed: (){},
             icon: const Icon(Icons.arrow_back)),
          ),
          backgroundColor: const Color.fromARGB(255, 68, 90, 100),
          floatingActionButton: FloatingActionButton(onPressed: (){
            showDialog(
              
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                title: const Text("Add To Do",textAlign: TextAlign.center,),
                actions: [
                  TextField(
                  decoration: const InputDecoration(
                    hintText: "Type here"
                  ),
                  controller: controller,
                  ),
                  RadioListTile(value: "High Priority", groupValue: _value, onChanged: (val){
                    setState(() {
                      _value= val.toString();
                    });
                  },
                  title:const Text("High Priority"),),
                   RadioListTile(value: "Low Priority", groupValue: _value, onChanged: (val){
                    setState(() {
                      _value=val.toString();
                    });
                  },
                  title: const Text("Low Priority"),
                  ),
                   RadioListTile(value: "Not a Priority", groupValue: _value, onChanged: (val){
                    setState(() {
                      _value=val.toString();
                    });
                  },
                  title: const Text("Not A Priority"),),
                  Row(
                      children: [
                        Text("Choose Date"),
                        Spacer(),
                        Column(
                          children: [
                             Text("Choose Time")
                          ]
                         )
                          ],
                        ),
                  Row(
                    children: [
                      IconButton(onPressed: (){},
                       icon: Icon(Icons.calendar_month)),
                       Spacer(),
                       Column(
                        children: [
                          IconButton(onPressed: (){},
                           icon: Icon(Icons.timer))
                        ],
                       )
                    ],
                  )
                

                ],
              ),
              
              
               );
          },
          backgroundColor: Colors.white,
          child: const Icon(Icons.add,color:Colors.black,),),
          body: const DefaultTabController(
            
      length: 3, 
      child: TabBar(tabs: [
      Tab(
        icon:Icon(Icons.timer,color: Colors.blue,),
            text: " IN-PROGGRESS"
            ),
        Tab(icon: Icon(Icons.check_box_rounded,color: Colors.green,),
        text: "COMPLETED",
        ),
        Tab(
          icon: Icon(Icons.cancel,color: Colors.red,),
          text: "CANCELLED",
        )
        
        ] ),
        
        ),
      ),
    );
  }
}