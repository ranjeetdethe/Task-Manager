import 'package:flutter/material.dart';
import 'package:task_manager_application/models/task_model.dart';

class TaskDetailsScreen extends StatelessWidget {
  final TaskModel task;

  const TaskDetailsScreen({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: task.tags
                  .map((tag) => Chip(
                        label: Text(
                          tag,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        backgroundColor: Colors.blue[50],
                      ))
                  .toList(),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Row(
                  children: const [
                    Icon(Icons.comment, size: 20, color: Colors.grey),
                    SizedBox(width: 8),
                    Text(
                      '3 Comments',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(width: 24),
                Row(
                  children: const [
                    Icon(Icons.link, size: 20, color: Colors.grey),
                    SizedBox(width: 8),
                    Text(
                      '1 Link',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
