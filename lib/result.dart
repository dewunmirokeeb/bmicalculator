import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  const Result({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: const Center(child: Text('BMI Calculator')),

      ),
      body: Center(
        child:  TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Go back'),
          
          ),




        ),
      
    );
  }
}