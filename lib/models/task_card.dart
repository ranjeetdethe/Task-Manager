import 'package:flutter/material.dart';
import 'package:task_manager_application/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;

  const TaskCard({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: task.tags
                      .map(
                        (tag) => Chip(
                          label: Text(
                            tag,
                          ),
                          backgroundColor: Colors.blue[50],
                          labelStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.comment, size: 20, color: Colors.black),
                    const SizedBox(width: 4),
                    const Text(
                      "3",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.link, size: 20, color: Colors.grey),
                    const SizedBox(width: 4),
                    const Text(
                      "1",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Container(
                    height: 30,
                    width: 30,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/3.jpg",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Container(
                    height: 30,
                    width: 30,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/2.jpg",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Container(
                    height: 30,
                    width: 30,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/1.jpg",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
