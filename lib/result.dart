import 'package:flutter/material.dart';
import 'reusablecodes.dart';


class Result extends StatelessWidget {
  const Result(this.bmiResult, this.resultText, this.interpretation,{ Key? key }) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.transparent,
        elevation: 0,
        backgroundColor: const Color(0xFF0A0E21),
        title:  const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              
              ),
            
            ),
        ),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
                child:  const Text(
                   'Your Result',
                   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 50,

                   ),
                ),
              
            ),
          ),

          Expanded(
            flex: 5,
            child: Reusablecontainer(
              const Color(0xFF1D1E33), 
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text(
                       resultText,
                     style: const TextStyle(
                       fontSize: 22,
                       color: Color(0xFF24D876),
                       fontWeight: FontWeight.bold,

                     ),
                     
                     ),
                   Text(
                      bmiResult,
                     style: const TextStyle(
                       fontSize: 100,
                       fontWeight: FontWeight.w900,

                     ),
                     ),
                   Text(
                      interpretation,
                     textAlign: TextAlign.center,
                     style:const TextStyle(
                       
                       fontSize: 22,
                       

                     ),
                     
                     ),

                ],
                ),
            
            ),
            
            ),
          SizedBox(
            width: double.infinity,
            height: 70,
            child:  TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all( const Color(0xFFEB1555),)
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text(
                'Re-Calculate',
                style: TextStyle(
                  fontSize:30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                
                ),
              
              ),




            ),
        ],
      ),
      
    );
  }
}