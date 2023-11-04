import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/widgets/lifeline_sidebar.dart';


class Question extends StatefulWidget {
  const Question({Key? key}) :super(key: key);

  @override
  _QuestionState createState() => _QuestionState();

}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage(
            "assets/images/background.png"
          )
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text("Rs. 20000",style: TextStyle(fontSize: 25),),centerTitle: true,),
        drawer: Lifeline_Drawer(),
        floatingActionButton: ElevatedButton(child: Text("QUIT GAME",style:
          TextStyle(fontSize: 22),),onPressed: (){},),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                fit: StackFit.expand,
                children: [
                CircularProgressIndicator(strokeWidth: 12,
                backgroundColor: Colors.green,
                ),
                  Center(child: Text("46",style: TextStyle(fontSize:45,fontWeight: FontWeight.bold,color:Colors.white),))
              ],),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(14),
              margin:EdgeInsets.all(17),
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
              child: Text("KBC quiz app is designed to win the real money upto _________.",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin:EdgeInsets.symmetric(vertical:5,horizontal: 17),
              decoration: BoxDecoration(color: Colors.red.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(35)),
              child: Text("A. 1,00,000",
                style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold ),
                textAlign: TextAlign.center,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin:EdgeInsets.symmetric(vertical:5,horizontal: 17),
              decoration: BoxDecoration(color: Colors.yellow.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(35)),
              child: Text("B. 1,50,000",
                style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold ),
                textAlign: TextAlign.center,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin:EdgeInsets.symmetric(vertical:5,horizontal: 17),
              decoration: BoxDecoration(color: Colors.green.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(35)),
              child: Text("C. 2,00,000",
                style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold ),
                textAlign: TextAlign.center,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin:EdgeInsets.symmetric(vertical:5,horizontal: 17),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(35)),
              child: Text("D. 5,00,000",
                style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold ),
                textAlign: TextAlign.center,),
            ),
          ],
        ),

      ),
    );
  }
}



