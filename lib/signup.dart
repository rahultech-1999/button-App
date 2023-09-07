
import 'package:first_prectic/dashboard.dart';
import 'package:first_prectic/privacy_policy.dart';
import 'package:first_prectic/register.dart';
import 'package:first_prectic/send_feedback.dart';
import 'package:first_prectic/settings.dart';
import 'package:flutter/material.dart';

import 'contacts.dart';
import 'events.dart';
import 'headerDrawer.dart';
import 'notes.dart';
import 'notifications.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, required String titel}) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage>{
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage == DrawerSections.dashboard){
      container = MyDashBoardPage();
    }else if(currentPage == DrawerSections.contacts){
      container = MyContactsPage();
    }else if(currentPage == DrawerSections.events){
      container = MyEventPage();
    }else if(currentPage == DrawerSections.notes){
      container = MyNotePage();
    }else if(currentPage == DrawerSections.settings){
      container = MySettingPage();
    }else if(currentPage == DrawerSections.notifications){
      container = MyNotificationPage();
    }else if(currentPage == DrawerSections.privacy_policy){
      container = MyPrivacyPolicyPage();
    }else if(currentPage == DrawerSections.sens_feedback){
      container = MySendFeedbackPage();
    }


    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.cyanAccent,
        title: Text("Rapid Tech"),
      ),

      body: Container(
        // child: Center(
        //   child: Text("Navbar drawer page"),
        // ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),

              ],
            ),
          ),
        ),
      ),
    );

   }

  Widget MyDrawerList() {
  
  return Container(
    padding: EdgeInsets.only(
        top: 15),
    child: Column(
      children: [
        menuItem(1, "Dashboard", Icons.dashboard_outlined,
            currentPage == DrawerSections.dashboard ? true : false),
        menuItem(2, "Contacts", Icons.people_alt_outlined,
            currentPage == DrawerSections.contacts ? true : false),
        menuItem(3, "Events", Icons.event,
            currentPage == DrawerSections.events ? true : false),
        menuItem(4, "Notes", Icons.notes,
            currentPage == DrawerSections.notes ? true : false),
        Divider(),
        menuItem(5, "Settings", Icons.settings_outlined,
            currentPage == DrawerSections.settings ? true : false),
        menuItem(6, "Notifications", Icons.notifications_outlined,
            currentPage == DrawerSections.notifications ? true : false),
        Divider(),
        menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
            currentPage == DrawerSections.privacy_policy ? true : false),
        menuItem(8, "Send feedback", Icons.feedback_outlined,
            currentPage == DrawerSections.sens_feedback ? true : false),

      ],
      
    ),
   );
  }
  Widget menuItem(int id,String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState((){
            if (id == 1){
              currentPage = DrawerSections.dashboard;
            }else if (id == 2){
              currentPage = DrawerSections.contacts;
            }else if (id == 3){
              currentPage = DrawerSections.dashboard;
            }else if (id == 4){
              currentPage = DrawerSections.contacts;
            }else if (id == 5){
              currentPage = DrawerSections.dashboard;
            }else if (id == 6){
              currentPage = DrawerSections.contacts;
            }else if (id == 7){
              currentPage = DrawerSections.dashboard;
            }else if (id == 8){
              currentPage = DrawerSections.contacts;
            }
              
            });
          },
        
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                      icon,
                    size: 20,
                    color: Colors.blue,
                  ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                 ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections{
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  sens_feedback,
}



