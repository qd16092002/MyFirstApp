
import 'package:flutter/material.dart';
import 'package:untitled/screens/home/tab3/home_screen_3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Todo List'),),
        body: TodoListContainer(),
      )
    );
  }
}


class TodoListContainer extends StatelessWidget {
  const TodoListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

        ],
      ),
    );
  }

  Widget _buildHeader(){
    var txtTodoController = TextEditingController();
    return Row(
      children: [
        TextFormField(
          controller: txtTodoController,
          decoration: const InputDecoration(
            labelText: 'Add todo',
            hintText: 'Add todo',
          ),
        )
      ],
    );
  }
}
