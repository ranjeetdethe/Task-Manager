import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function(String, List<String>) onAddTask;

  const AddTaskScreen({Key? key, required this.onAddTask}) : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Task Title'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: tagsController,
              decoration:
                  const InputDecoration(labelText: 'Tags (comma-separated)'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    tagsController.text.isNotEmpty) {
                  final tags = tagsController.text
                      .split(',')
                      .map((tag) => tag.trim())
                      .toList();

                  widget.onAddTask(titleController.text, tags);

                  titleController.clear();
                  tagsController.clear();
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text(
                            'Please provide both a title and at least one tag.')),
                  );
                }
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
