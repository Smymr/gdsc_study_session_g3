import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/tasks': (context) => TasksPage(),
        '/create-task': (context) => CreateTaskPage(),
        '/task-detail': (context) => TaskDetailPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tasks');
                  },
                  child: Text('Get Started'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks List'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/task1.png',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text('Task 1'),
          ),
          ListTile(
            title: Text('Task 2'),
          ),
          ListTile(
            title: Text('Task 3'),
          ),
          ListTile(
            title: Text('Task 4'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/create-task');
            },
            child: Text('Create Task'),
          ),
        ],
      ),
    );
  }
}

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Create New Task'),
      ),
      body: ListView(
        children: [
          Text('Task Name'),
          ListTile(
            title: Text('Task 1'),
          ),
          Text('Due Date'),
          ListTile(
            title: Text('12/12/2023'),
          ),
          Text('Description'),
          TextFormField(
            initialValue: 'My task description',
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/task-detail');
            },
            child: Text('Add Task'),
          ),
        ],
      ),
    );
  }
}

class TaskDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Detail'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/task2.png',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
          Text('Title'),
          ListTile(
            title: Text('Task 1'),
          ),
          Text('Description'),
          ListTile(
            title: Text('My task description'),
          ),
        ],
      ),
    );
  }
}
