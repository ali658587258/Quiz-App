
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzles/secreens/levels_screen.dart';

class WelcomeScreen extends StatelessWidget {

static const routeName = '/welcomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset('assets/images/—Pngtree—quiz sign icon questions_6234109.png',width: 150,height: 150,),
              SizedBox(
                height: 20,
              ),
              Text('Quizzles',style: TextStyle(fontSize: 50,color: Color(0xff6a90fe),fontWeight:FontWeight.bold,)),
              SizedBox(
                height: 20,
              ),
              Text("Let's Play",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600 ,color: Colors.white),),
              SizedBox(
                height: 10,
              ),
              Expanded(child: Text('Play now and Level up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),
              
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LevelsScreen()));
                },
                child: Text('Play Now',style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6a49fe),
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                )
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text('About',style: TextStyle(color: Color(0xff6a49fe),fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shape:RoundedRectangleBorder(side: BorderSide(
                color: Color(0xff6a49fe),
                    width: 1,
                    style: BorderStyle.solid ),
                  borderRadius: BorderRadius.circular(15)),
                  minimumSize: const Size.fromHeight(50)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
