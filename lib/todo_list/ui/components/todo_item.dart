import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_list/model/item_object.dart';

class ItemTodo extends StatefulWidget {
  ItemObject ItemObj;
  ItemTodo({super.key, required this.ItemObj});

  @override
  State<ItemTodo> createState() => _ItemTodoState();
}

class _ItemTodoState extends State<ItemTodo> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.ItemObj.title),
      trailing: widget.ItemObj.completed == true ? Icon(Icons.check_box_rounded, color: Color.fromARGB(255, 185, 154, 33),) : Icon(Icons.check_box_outline_blank_rounded) ,
      
    );
  }
}