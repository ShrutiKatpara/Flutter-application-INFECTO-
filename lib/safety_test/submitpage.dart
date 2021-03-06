import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:project/pages/account_page.dart';
import 'package:project/safety_test/details.dart';
import 'package:project/themedata/themes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'firstquestion.dart';
import 'secondquestion.dart';
import 'thirdquestion.dart';
import 'fourthquestion.dart';
//import 'package:project/pages/account_page.dart';

var brad_local = BorderRadius.circular(5);

class MyAppSubmitPage extends StatefulWidget {
  static const String tag = "submitpage";

  MyAppSubmitPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Widget _networkStatusMessage(double rating){
  if(fileDownloaded){
    set_lsr(rating);
    inc_test_taken();
    return Container();
  }
  else{
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Text(
          "Network Error\nResults are incorrect",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
    );
  }
}
double grating = -1;
double rating = score1+score2+score3+score4;
class _MyHomePageState extends State<MyAppSubmitPage> {
  
  String safetyvar = "null";

  _launchURL() async {
  const url = 'https://transformingindia.mygov.in/covid-19/?sector=dos-and-donts&type=en#scrolltothis';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


  @override
  Widget build(BuildContext context123) {
    print(fileDownloaded);
    rating = (rating*100).toInt().toDouble();
    rating = rating/100;
     
    grating = rating; 
    
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
        return null;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Thank You"),
          backgroundColor: stColor,
        ),
        backgroundColor: GFColors.WHITE,
        body:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _networkStatusMessage(rating),
              Spacer(flex: 5,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "$rating",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w500,
                    color: stColor
                  ),
                ),
              ),
              SizedBox(height: 10,),
              MaterialButton(
                onPressed: (){
                  //Navigator.of(context).pushNamed('Details');
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Details()),);
                },
                child: Text("Click for more details", style: TextStyle(color: Colors.white),),
                color: Color(0xFF95190C),
              ),

              Spacer(flex: 5,),
              Divider(
                color: Colors.grey,
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              Spacer(),
              

              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[    
                    MaterialButton(
                      elevation: 5,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(borderRadius: brad_local),
                      onPressed: (){
                        _launchURL();
                      },
                      color: Color(0xFF1D8A99),
                      child: Text("How you can reduce the rating ?", style: TextStyle(color: Colors.white),),
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('faq');
                          },
                          elevation: 5,
                          shape: RoundedRectangleBorder(borderRadius: brad_local),
                          color: Color(0xFF1D8A99),
                          child: Text("FAQ Page", style: TextStyle(color: Colors.white),),
                        ),

                        MaterialButton(
                          elevation: 5,
                          shape: RoundedRectangleBorder(borderRadius: brad_local),
                          onPressed: (){
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          color: Color(0xFF1D8A99),
                          child: Text("Back to Dashboard", style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[    
                          MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('reminders');
                          },
                          elevation: 5,
                          shape: RoundedRectangleBorder(borderRadius: brad_local),
                          color: Color(0xFF1D8A99),
                          child: Text("Add reminder for safety test", style: TextStyle(color: Colors.white),),
                        ),


                  ],
                ),
              ),
              
              Spacer(),              

            ],
          ),
      ),
            ]
            )
            )
            );
  }
}
