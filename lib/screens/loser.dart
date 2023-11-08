import 'package:flutter/material.dart';


class LoserScreen extends StatelessWidget {
  const LoserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/loose.png"), fit: BoxFit.cover)),
      child: Scaffold(
        floatingActionButton: ElevatedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.refresh,
                size: 18,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Retry"),
            ],
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            child: Stack(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ohh Sorry !",
                        style:
                        TextStyle(
                        color: Colors.white
                        ,fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Your ANSWER IS INCORRECT",
                        style:

                        TextStyle(color: Colors.white.withOpacity(0.9)
                            ,fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "You Won",
                        style:
                        TextStyle(color: Colors.white
                            ,fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Rs. 5,40,000",
                        style:
                        TextStyle(color: Colors.white
                            ,fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Visibility(
                        visible: false,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Image.asset("assets/images/cheque.jpg"),
                        ),
                      ),

                      Icon(Icons.error_outline,
                      size:100,
color: Colors.white,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Go to Rewards"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
