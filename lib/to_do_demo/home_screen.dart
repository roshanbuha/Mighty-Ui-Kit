import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/to_do_demo/database_helper.dart';
import 'package:mighty_ui_kit/to_do_demo/todo.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, this.todo}) : super(key: key);

  Todo? todo;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool priority = false;

  @override
  void initState() {
    if (widget.todo != null) {
      titleController.text = widget.todo!.title!;
      descriptionController.text = widget.todo!.description!;
      priority = widget.todo!.priority!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: buildScaffoldBody(),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  Widget buildScaffoldBody() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          getTitleField(),
          const SizedBox(
            height: 20,
          ),
          getDescriptionField(),
          const SizedBox(
            height: 20,
          ),
          getPrioritySwitch()
        ],
      ),
    );
  }

  Widget getTitleField() {
    return TextField(
      controller: titleController,
      decoration: InputDecoration(
          hintText: "Enter Title",
          hintStyle: const TextStyle(color: Colors.blue),
          label: const Text("Title"),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }

  Widget getDescriptionField() {
    return TextField(
      controller: descriptionController,
      decoration: InputDecoration(
          hintText: "Enter Description",
          hintStyle: const TextStyle(color: Colors.blue),
          label: const Text("Description"),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }

  Widget getPrioritySwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Is Priority High?"),
        Switch(
          value: priority,
          onChanged: (value) {
            priority = value;
            setState(() {});
          },
        ),
      ],
    );
  }

  Widget buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () async {
        if (widget.todo == null) {
          addTodo();
        } else {
          editTodo();
        }
      },
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }

  void addTodo() async {
    Todo todo = Todo();
    todo.title = titleController.text;
    todo.description = descriptionController.text;
    todo.priority = priority;

    int result = await DatabaseHelper().insertTodo(todo);
    Navigator.of(context).pop();
  }

  void editTodo() async {
    Todo todo = Todo();
    todo.title = titleController.text;
    todo.description = descriptionController.text;
    todo.priority = priority;
    todo.id = widget.todo!.id!;

    int result = await DatabaseHelper().updateTodo(todo);
    Navigator.of(context).pop();
  }
}
