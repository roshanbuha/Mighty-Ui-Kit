import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/to_do_demo/database_helper.dart';
import 'package:mighty_ui_kit/to_do_demo/home_screen.dart';
import 'package:mighty_ui_kit/to_do_demo/todo.dart';


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Todo> todoList = [];

  @override
  void initState() {
    getListFromDb();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: getBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );

          getListFromDb();
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget getBody() {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: ClipOval(
          child: Container( 
            height: 50,
            width: 50,
            color: todoList[index].priority! ? Colors.red : Colors.teal,
            child: Center(
              child: Text(
                todoList[index].priority! ? "H" : "L",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        title: Text(todoList[index].title!),
        subtitle: Text(todoList[index].description!),
        trailing: IconButton(
          onPressed: () async {
            await DatabaseHelper().deleteTodo(todoList[index]);
            getListFromDb();
          },
          icon: Icon(Icons.delete),
        ),
        onTap: () async {
          await Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HomePage(todo: todoList[index]),
          ));
          getListFromDb();
        },
      ),
      itemCount: todoList.length,
    );
  }

  void getListFromDb() async {
    debugPrint("Getting Data From Db");
    todoList = await DatabaseHelper().readTodo();
    setState(() {});
  }
}
