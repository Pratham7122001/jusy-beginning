import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    //final ImageUrl="https://media-exp1.licdn.com/dms/image/C4E03AQHZQQx91rrKYw/profile-displayphoto-shrink_800_800/0/1646428199064?e=2147483647&v=beta&t=ffSBKBek6aSy0LvbvCpZ3SpM2MYtNiT2bxfjfiYlePw";
    // ignore: prefer_const_constructors
    return Drawer(

     child: Container(
      color: Colors.brown[400],
       child: ListView(
        children: [
          DrawerHeader(
            padding:EdgeInsets.zero,

            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("PrathamGangwal"),
            accountEmail:  Text("Prathamgangwal777@gmail.com"),
            currentAccountPicture:Image.asset("assets/images/WhatsApp Image 2022-09-09 at 9.54.55 PM.png"),
            )
            ),
              ListTile(
                 leading: Icon(
                CupertinoIcons.home,
                color:Colors.white),
                 title:
                 Text("Home",
                 textScaleFactor: 1.2,
                 style:TextStyle(
                  color:Colors.white)),
             ),
            ListTile(
                 leading: Icon(
                CupertinoIcons.profile_circled,
                color:Colors.white),
                 title:
                 Text("Profile",
                 textScaleFactor: 1.2,
                 style:TextStyle(
                  color:Colors.white)),
             ),
            ListTile(
                 leading: Icon(
                CupertinoIcons.mail,
                color:Colors.white),
                 title:
                 Text("Mail me",
                 textScaleFactor: 1.2,
                 style:TextStyle(
                  color:Colors.white)),
             )
        ],
       ),
     ),
      
    ); //container hai isiliye drawer nahi dikhraha so change it with Drawer
  }
}