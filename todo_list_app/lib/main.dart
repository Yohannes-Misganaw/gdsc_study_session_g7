import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/tasks': (context) => TasksPage(),
        '/createTask': (context) => CreateTaskPage(),
        '/taskDetail': (context) => TaskDetailPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo-List App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Todo-List App',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tasks');
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display tasks here
            Text(
              'Tasks List',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/createTask');
              },
              child: Text('Create Task'),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Main Task Name'),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Due Date'),
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement task creation logic
                // For simplicity, navigate back to the tasks page
                Navigator.pop(context);
              },
              child: Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract task details from arguments
    // For simplicity, let's use placeholder values
    final Map<String, dynamic> taskDetails = {
      'title': 'Sample Task',
      'description': 'Sample description for the task.',
      'dueDate': '2023-12-31',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: ${taskDetails['title']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Description: ${taskDetails['description']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Due Date: ${taskDetails['dueDate']}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
