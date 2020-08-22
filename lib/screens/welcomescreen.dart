import 'package:flutter/material.dart';
import 'package:news_app/pagemodel.dart';
import 'package:news_app/screens/homescreen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  List< PageModel> pages;
  ValueNotifier<int>_pageviewNotifier = ValueNotifier(0);

  void _addpages(){
    pages.add(PageModel('assets/images/pp.jpg', "welcome", "1Making frinds is easy as waving your hand forth in easy step", Icons.ac_unit,),);
    pages.add(PageModel('assets/images/pp2.png', "welcome", "2Making frinds is easy as waving your hand forth in easy step", Icons.access_alarm,),);
    pages.add(PageModel('assets/images/pp3.jpg', "welcome", "3Making frinds is easy as waving your hand forth in easy step", Icons.call,));
    pages.add(PageModel('assets/images/pp4.jpg', "welcome", "4Making frinds is easy as waving your hand forth in easy step", Icons.phone,),);
  }
  @override
  Widget build(BuildContext context) {
    pages = List<PageModel>();
    _addpages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
              itemBuilder: (context , index){
                return Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage (
                          image: ExactAssetImage(pages[index].images),
                          fit: BoxFit.cover,
                        ),
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                          child: Icon(pages[index].icons,
                                 size: 150,
                                 color:Colors.white,
                               ),
                          offset: Offset(0, -100),
                        ),
                        Text(pages[index].title,
                          style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48,right: 48,top: 18,),
                          child: Text(pages[index].describtion,
                               style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 16
                               ),
                            textAlign: TextAlign.center,
                               ),
                        ),
                         ],
                    )
                  ],
                );
              },
            itemCount: pages.length ,
            onPageChanged: (index){
                _pageviewNotifier.value=(index);
            },
          ),

          Transform.translate(
            offset: Offset(0, 175),
            child: Align
              (alignment: Alignment.center,
              child: _displayPageViewIndicator(pages.length),
               ),
          ),


          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8,left: 16,right: 16),
                child: RaisedButton(
                  color: Colors.red,
                  child: Text('GET START',style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1
                      ),
                      ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                     },
                     ),
                     );

                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 Widget _displayPageViewIndicator (int length) {
   return PageViewIndicator(
     pageIndexNotifier: _pageviewNotifier,
     length: length,
     normalBuilder: (animationController, index) =>
         Circle(
           size: 10.0,
           color: Colors.grey,
           ),
     highlightedBuilder: (animationController, index) =>
         ScaleTransition(
           scale: CurvedAnimation(
             parent: animationController,
             curve: Curves.ease,
             ),
           child: Circle(
             size: 12.0,
             color: Colors.red,
             ),
           ),
     );
 }
}

