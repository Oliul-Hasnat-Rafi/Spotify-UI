import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class M_Artists extends StatelessWidget {
  const M_Artists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
             Text('Looking for a show to listen?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(backgroundColor:Colors.indigo.shade300 ),
            child: Text('Browse',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))
          ],
        ),
      ) ,
    );
  }
}
