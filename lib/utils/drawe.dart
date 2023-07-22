import 'package:flutter/material.dart';
import 'package:transition/transition.dart';

import '../todo_list/ui/todo_list_app.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(121, 185, 154, 33),
             
            ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/splash_image.png'),
                  backgroundColor: Colors.white,
                  ),
              accountName: Text("Atheer Almazrui" , style: TextStyle( color:Colors.black),),
              accountEmail: Text("atheer@gmail.com" , style: TextStyle( color:Colors.black),),
              
              ),
              
          ListTile(
            title: Text("Home Screen"),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            splashColor: Colors.grey[500],
          ),
          ListTile(
            title: Text("My Tasks"),
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: TodoListAPP(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.grey[500],
          ),
          ListTile(
            title: Text("View Calendar"),
            onTap: () {
            },
            splashColor: Colors.grey[500],
          ),
          ListTile(
            title: Text("Settings"),
            onTap: () {
            },
            splashColor: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}