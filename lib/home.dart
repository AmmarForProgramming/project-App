import 'package:flutter/material.dart';
import 'package:scrol_leison/login.dart';
// import 'package:scrol_leison/login.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({this.name=""});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome: "+name), // Added title to AppBar
      ),
      body: const Center(child: Text("data")), // Centered the text
      drawer: Drawer(
        backgroundColor: Colors.teal,
        child: Column(
          children: [
            const DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Unknown.jpeg"),
                    radius: 50,
                  ),
                  Divider(
                    indent: 40,
                    endIndent: 40,
                    height: 1,
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Text("ammar@gmail.com"),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  buildListTile(context, "Home", const Icon(Icons.home),
                      () => const MyHomePage()),
                  buildListTile(context, "Login", const Icon(Icons.login),
                      () => const Login()),
                  buildListTile(context, "Settings", const Icon(Icons.settings),
                      () => const Login()),
                  buildListTile(context, "About", const Icon(Icons.info),
                      () => const Login()),
                  buildListTile(context, "Help", const Icon(Icons.help),
                      () => const Login()),
                  buildListTile(context, "Share", const Icon(Icons.share),
                      () => const Login()),
                  buildListTile(context, "Rate", const Icon(Icons.star),
                      () => const Login()),
                  buildListTile(context, "Privacy",
                      const Icon(Icons.privacy_tip), () => const Login()),
                  buildListTile(context, "Terms", const Icon(Icons.verified),
                      () => const Login()),
                  buildListTile(context, "Logout", const Icon(Icons.logout),
                      () => const Login()),
                  buildListTile(context, "Exit", const Icon(Icons.exit_to_app),
                      () => const Login()),
                  buildListTile(context, "Home", const Icon(Icons.home),
                      () => const MyHomePage()),
                  buildListTile(context, "Login", const Icon(Icons.login),
                      () => const Login()),
                  buildListTile(context, "Settings", const Icon(Icons.settings),
                      () => const Login()),
                  buildListTile(context, "About", const Icon(Icons.info),
                      () => const Login()),
                  buildListTile(context, "Help", const Icon(Icons.help),
                      () => const Login()),
                  buildListTile(context, "Share", const Icon(Icons.share),
                      () => const Login()),
                  buildListTile(context, "Rate", const Icon(Icons.star),
                      () => const Login()),
                  buildListTile(context, "Privacy",
                      const Icon(Icons.privacy_tip), () => const Login()),
                  buildListTile(context, "Terms", const Icon(Icons.verified),
                      () => const Login()),
                  buildListTile(context, "Logout", const Icon(Icons.logout),
                      () => const Login()),
                  buildListTile(context, "Exit", const Icon(Icons.exit_to_app),
                      () => const Login()),
                  const Divider(
                    indent: 40,
                    endIndent: 40,
                    height: 1,
                    color: Colors.black,
                    thickness: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildListTile(
      BuildContext context, String title, Icon icon, Widget Function() page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        title: Text(title), // Added const
        tileColor: Colors.white,
        leading: icon, // Added const
        trailing: const Icon(Icons.arrow_forward_ios), // Added const
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => page(),
            ),
            (route) => false,
          );
        },
      ),
    );
  }
}
