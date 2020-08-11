import 'package:flutter/material.dart';
import 'page2.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          //drawerheader is used to give custom head option in
          //material drawer
          /* DrawerHeader(
            child: Icon(
              Icons.camera,
            ),
            )*/
          //kind of drawer header found in google app ex gmail
          UserAccountsDrawerHeader(
            accountName: Text("Aniruddha Rawale",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600
              ),
            ),
            accountEmail: Text("Aniruddha.Rawale1498@gmail.com",
              style: TextStyle(
                  fontWeight: FontWeight.w500
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: Text("A.R",
                style: TextStyle(
                    letterSpacing: 3.0,
                    fontSize: 20.0
                ),
              ),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Text("R.V"),
                backgroundColor: Colors.white70,

              ),
            ],
            //when you press this a small arrow will open
            //which will give additional information
            /* onDetailsPressed: (){
               Text("Log in");
             },*/

          ),
          //we created a special file to write code here because we
          //dont want to write same code again and again
          // for the page 2 and main

          ListTile(
            leading: Icon(Icons.arrow_forward,
              color: Colors.red,
            ),
            title: Text("Page 2",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PageNow()
              ));
            },
            /* //listtile is clickable by default so you can use
              //on tap to use while navigation
             onTap: (){},
              //selected is used when you will select it
              //it will change color
              selected: true,*/
            /*
             when you want text first and then icon letter
             trailing: Icon(Icons.contacts),
             */
          ),
          ListTile(
            leading: Icon(Icons.home,
              color: Colors.red,
            ),
            title: Text("Home",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          //to divide by a line
          Divider(
            thickness: 1.0,
          ),
          //to put list at the end of body
          Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ListTile(
                  leading: Icon(Icons.bug_report,
                    color: Colors.red,
                  ),
                  title: Text("Bug",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ))

        ],
      ),
    );
  }
}
