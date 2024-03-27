import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI3S6IKbleYVyoExadnfctpDsWpoLhLpSXV6P7sFsGgQ&usqp=CAU&ec=48600112";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Manav Soni"),
                accountEmail: Text("bdgg@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
            title: Text("Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.deepPurple,
                )),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.deepPurple,
            ),
            title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.deepPurple,
                )),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: Colors.deepPurple,
            ),
            title: Text("Contact us",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.deepPurple,
                )),
          ),
        ],
      ),
    );
  }
}
