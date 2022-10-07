
import 'package:flutter/material.dart';

class StatiqMsg extends StatefulWidget {
  const StatiqMsg({super.key});

  @override
  State<StatiqMsg> createState() => _StatiqMsgState();
}

class _StatiqMsgState extends State<StatiqMsg> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("NS CONNECT"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text("Message statique", style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25
    
              ),),
            ),
            const SizedBox(
            height: 20,
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color : Colors.black12,
                  borderRadius:BorderRadius.circular(20)
                ),
                child: TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                )),
               
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: (){
                  
                },
                child: Container(
                  height: size.height*0.07, 
                  width: size.width*0.6,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Center(child: Text("ENVOYER", 
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),) ),
              ),
         
         )
            ],
          ),
        ),
      )
    );
  }
}