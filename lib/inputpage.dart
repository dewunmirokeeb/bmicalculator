import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecodes.dart';
import 'bmi_brain.dart';
enum Gender{

  male,
  female,
}
 String bmi = '0';
 String getResult = '0';
 String getInterpretation = '0';
  //Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


 Color containercolor = const Color(0xFF1D1E33);
  Color malecardcolor = const Color(0xFF1D1E33);
  Color femalecardcolor = const Color(0xFF1D1E33);
  int height = 120;
  int weight = 0;
  int age = 0;

  void changecolor(Gender gender){
    if(gender == Gender.male){
      if(malecardcolor == const Color(0xFF1D1E33)){
          malecardcolor = const Color(0xFFEB1555);
          femalecardcolor = const Color(0xFF1D1E33);
      }else{
        malecardcolor = const Color(0xFF1D1E33);
        femalecardcolor = const Color(0xFF1D1E33);
      }
    }else if(gender == Gender.female){

      if(femalecardcolor == const Color(0xFF1D1E33)){
          femalecardcolor = const Color(0xFFEB1555);
          malecardcolor = const Color(0xFF1D1E33);
      }else{
        femalecardcolor = const Color(0xFF1D1E33);
        malecardcolor = const Color(0xFF1D1E33);

    }

  }
  }
    Color bottomcontainercolor =  const Color(0xFFEB1555);

   
  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Center(child: Text('BMI CALCULATOR'),),
      ),

      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        changecolor(Gender.male);                                         
                      });
                    },
                    child: Reusablecontainer(
                      malecardcolor,
                      const Leadingwidget('MALE',FontAwesomeIcons.mars),
                      
                      ),
                  ),
                ),
            
          Expanded(
                  flex: 1, 
                  child: GestureDetector(
                    onTap: (){
                     setState(() {
                                changecolor(Gender.female);        
                     });
                    },
                    child:  Reusablecontainer(
                        femalecardcolor,
                        const  Leadingwidget('FEMALE', FontAwesomeIcons.venus),
                      
                      ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Reusablecontainer(
                containercolor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                     const  Text(
                        'HEIGHT',
                        style: TextStyle(
                             color: Color(0xFF8D8E98),
                             fontSize: 18,
                        ),
                        ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.baseline,
                         textBaseline: TextBaseline.alphabetic,
                         children: [
                           Text(
                              height.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                
                              ),
                              
                              ),

                            const Text(
                              'cm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                //fontweight: Fontweight.bold,
                                
                            ),
                              
                          ),
                        ],
                      ),

          SliderTheme(
              data: SliderTheme.of(context).copyWith(
                      thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: const RoundSliderOverlayShape(overlayRadius: 30)
                    ),
                      child: Slider(
                        value: height.toDouble(),
                        thumbColor: const Color(0xFFEB1555),
                        activeColor: const Color(0xFFEB1555),
                        inactiveColor: const Color(0xFF8D8E98),
                        onChanged: (double heightchanged){
                          setState(() {
                            height = heightchanged.round();
                      });    
                    },
                        min: 120,
                        max: 220,
                              
                     ),
                  ),      
                ],
              ),
                  
            ),
          ),


          Expanded(
            child: Row(
              children:  [
              Expanded(
                      flex: 1,
                      child: Reusablecontainer(
                        containercolor,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const  Text(
                            'WEIGHT',
                             style: TextStyle(
                             color: Color(0xFF8D8E98),
                             fontSize: 25,
                        ),
                        ),
                        Text(
                              weight.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                
                              ),
                              
                              ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xFF4C4F5E),
                              child: IconButton(
                               icon: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight!= 0 ? weight-- : weight = 0;
                                });
                              },
                                                      ),
                            ),

                            const SizedBox( 
                              width: 10,
                            ),

                            CircleAvatar(

                              backgroundColor: const Color(0xFF4C4F5E),
                              child: IconButton(
                               icon: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight ++;
                                });
                              },


                            ),

                            ),
                          ],
                          ),
                      ],
                    ),
                      
                  ),
                ),

              Expanded(
                      flex: 1,
                      child: Reusablecontainer(
                        containercolor,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const  Text(
                            'AGE',
                             style: TextStyle(
                             color: Color(0xFF8D8E98),
                             fontSize: 25,
                        ),
                        ),
                        Text(
                              age.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                
                              ),
                              
                              ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xFF4C4F5E),
                              child: IconButton(
                               icon: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  age!= 0 ? age-- : age = 0;
                                });
                              },
                                                      ),
                            ),

                            const SizedBox( 
                              width: 10,
                            ),

                            CircleAvatar(

                              backgroundColor: const Color(0xFF4C4F5E),
                              child: IconButton(
                               icon: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  age ++;
                                });
                              },


                            ),

                            ),
                          ],
                          ),
                      ],
                    ),
                 )
                ),
              ],
            ),
          ),

          SizedBox(
            width: double.infinity,
            height: 70,
            child: TextButton(
              onPressed: (){
                setState(() {
                  CalBrain cal = CalBrain(weight,height);
                  bmi = cal.calculateBmi().toStringAsFixed(1);
                  int x = cal.calculateBmi().round();
                  getResult = cal.getResult(x);
                  getInterpretation = cal.getInterpretation(x);
                  
                });
                Navigator.pushNamed(context, 'result_page');
                
             }, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(bottomcontainercolor,)
              ),
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize:30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                   ),
                )
              ),
          ),

        ],
      )
    );
  }
}