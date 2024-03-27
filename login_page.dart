import 'package:flutter/material.dart';
//import 'package:myapp/pages/home_page.dart';
import 'package:myapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebtn = false;

  final _formkey =GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    if (_formkey.currentState!.validate()){
    setState(()  {
      changebtn = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changebtn = false;
    });}

  }
  @override
  Widget build(BuildContext context) {


    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
      child: Form(
        key: _formkey ,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
             Text(
              "Welcome $name!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
           child: Column(children: [
             TextFormField(

               decoration: InputDecoration(

                 labelText: ("Username"),
                 hintText: "Enter Username",

               ),
               validator: (value){
                 if(value!.isEmpty){
                   return "Username can not empty";
                 }
                 return null;
               },
               onChanged: (value){
                 name= value;
                 setState(() {

                 });
               },
             ),
             TextFormField(
               obscureText: true,
               decoration: InputDecoration(
                 labelText: ("Password"),
                 hintText: "Enter Password",

               ),
               validator: (value){
                 if(value!.isEmpty){
                   return "Password can not empty";
                 }
                 if(value.length<8){
                   return "Minimum length is 8";
                 }
                 return null;
               },
             ),
             SizedBox(
               height: 20,
             ),

              Material(
                borderRadius: BorderRadius.circular(changebtn ? 50 : 8),
                color: Colors.deepPurple,
                child: InkWell(
                  onTap:  () => moveToHome(context),


                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changebtn ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child:changebtn
                        ?Icon(
                        Icons.done,
                        color: Colors.white
                    )
                    :Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),
                  ),
                  //duration: Duration(seconds: 1),
                  ),
                ),
              )



           ],),
         )
          ],
        ),
      ),),
    );
  }}


