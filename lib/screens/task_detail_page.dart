import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Task task = ModalRoute.of(context)!.settings.arguments as Task;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la tarea'),
        backgroundColor: const Color.fromARGB(255, 119, 204, 243),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Text(
              task.description,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              task.isCompleted ? 'Completada' : 'Pendiente',
              style: TextStyle(
                fontSize: 18,
                color: task.isCompleted ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
