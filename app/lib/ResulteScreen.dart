import 'package:flutter/material.dart';
import 'HomePage.dart';

class ResultScreen extends StatelessWidget {
  final  gender;
  final  result;
  final  age;

  const ResultScreen({Key? key, this.gender, this.result, this.age}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>MyHomePage())),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Gender " ,style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(width: 5,),
                Text(":" ,style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(width: 5,),
                Text(" $gender" ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Age " ,style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(width: 5,),
                Text(":" ,style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(width: 5,),
                Text(" $age" ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your BMI " ,style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(width: 5,),
                Text(":" ,style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(width: 5,),
                Text(" ${result.round()}" ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
