import 'package:flutter/material.dart';
import 'package:ns_connect/connect.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:<Widget> [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text("NS Connect",style: TextStyle(
                fontSize: 40, 
            fontWeight: FontWeight.bold,
            ),
             ),
              ),
              SizedBox(
                  height: size.height * 0.35,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child:  CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person_rounded, color: Colors.white, size: 150,)
                    )
                  )),
            
             const Text("Connexion utilisateur",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold,
             ),
             ),
             SizedBox(
                height: size.height * 0.02,
              ),
           TextFormField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              labelText:"Identifiant",
              prefixIcon: const Icon(Icons.person),
            hintStyle: const TextStyle(
              color: Colors.black,
            ) ,),
           ) ,
           SizedBox(
                height: size.height * 0.01,
              ),
           TextFormField(
            obscureText: !showPassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              labelText:"Mots de passe",
              prefixIcon: const Icon(Icons.lock),
            suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            child: showPassword? const Icon(Icons.visibility, color: Colors.black) : const Icon(Icons.visibility_off,color: Colors.black,),
           
            ),
           )),
           SizedBox(
                height: size.height * 0.005,
              ),
         Container(
          alignment: Alignment.centerRight,
           child: TextButton(
           child: const Text('Mot de passe oublier ?'),
           onPressed: () {
           
           }
       ),
         ),
           SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: ((context) => const Connect())));
                },
                child: Container(
                  height: size.height*0.07, 
                  width: size.width*0.6,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Center(child: Text("CONNEXION", 
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),) ),
              ),
         
         )
         ],
         
         ),
       ),
     ), 
    );
  }
}