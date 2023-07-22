import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_list/model/item_object.dart';
import 'package:flutter_application_1/todo_list/ui/components/todo_item.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/drawe.dart';
import '../services/item_object_api.dart';

class TodoListAPP extends StatefulWidget {
  const TodoListAPP({super.key});

  @override
  State<TodoListAPP> createState() => _TodoListAPPState();
}

class _TodoListAPPState extends State<TodoListAPP> {
  List Todos = [];
  TextEditingController newTask = TextEditingController();
final ScrollController controllerOne = ScrollController();

  void getAllItemsObjects() async {
    ItemObjectApi.getAllItemsObjects().then((response) {
      setState(() {
        Todos = response;
      });
      print(response);
    });
  }

  @override
  void initState() {
    super.initState();
    getAllItemsObjects();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text(
            "My Tasks",
            style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 185, 154, 33),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 3,
          shadowColor: Colors.white,
        ),
        drawer: Drawe(),
        body: SingleChildScrollView(

          child: Column(
            children: [
              
              Text("Tasks count: ${Todos.length.toString()}" , style: TextStyle(
                backgroundColor: Color.fromARGB(110, 185, 154, 33),
                fontSize: 17,
                height: 2,
                fontWeight: FontWeight.w500,
                fontFamily: 'aBeeZee',
              ),
              
              ),
               
              Scrollbar(
                thickness: 8,
                radius: Radius.circular(20),
                thumbVisibility: true,
                interactive: true,
                controller: controllerOne,
                child: Column(
                  children: [
                    SizedBox(
                      height: 550, //MediaQuery.of(context).size.height * 0.8,
                      width: double.infinity,
                      child: ListView.builder(
                        controller: controllerOne,
                        itemCount: Todos.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ItemTodo(
                                ItemObj: Todos[index],
                              ),
                              const Divider(
                                thickness: 0.7,
                                endIndent: 70,
                              )
                            ],
                          );
                        },
                      ),
                    ),
              
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: double.infinity,
                        height: 70, //MediaQuery.of(context).size.height * 0.035,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 290, //MediaQuery.of(context).size.width * 0.5,
                                child: TextField(
                                  controller: newTask,
                                  keyboardType: TextInputType.text,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "Your To do",
                                    hintStyle: const TextStyle(
                                      fontFamily: 'aBeeZee',
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Color.fromARGB(121, 185, 154, 33),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // To Add new Task
                                  String _newTask = newTask.text.toString();
                                  ItemObject new_todo;
                                  if (_newTask.isNotEmpty) {
                                    new_todo = ItemObject(newTask.text.toString());
                                    print(newTask.text.toString());
                                    setState(() {
                                      Todos.add(new_todo);
                                      newTask.clear();
                                    });
                                  }
                                  print(Todos.first.toString());
                                },
                                child: SizedBox(
                                  width: 50,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(121, 185, 154, 33),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Icon(Icons.add),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  
  

  }
}
