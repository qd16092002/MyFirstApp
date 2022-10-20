import 'package:flutter/material.dart';


class TodoListContainer extends StatefulWidget {
  const TodoListContainer({Key? key}) : super(key: key);

  @override
  State<TodoListContainer> createState() => _TodoListContainerState();
}

class _TodoListContainerState extends State<TodoListContainer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return ListTile(
        title: Text('Todo $index'),

      );
    });
  }
}
