
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/presentation/login_screen.dart';
import 'package:to_do_app/model/task_model.dart';
import 'package:to_do_app/provider/task_provider.dart';
import 'package:to_do_app/sevices/auth.dart';
import 'package:to_do_app/sevices/firestore.dart';
import 'package:to_do_app/presentation/to_do_dialog_widget.dart';


class TaskListWidget extends StatelessWidget {
  const TaskListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Auth().signOut();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
              },
              icon: const Icon(Icons.exit_to_app))
        ],
        centerTitle: true,
        title: const Text('To Do', style: appBarTextStyle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Consumer<AddTask>(
        builder: (context, task, Widget? child) {
          return StreamBuilder<List<TaskModel>>(stream: Firestore().listTask(), builder: (context, snapshot){
             List<TaskModel>? toDo = snapshot.data;
          
           if(toDo == null) {
           return const Center(child:  CircularProgressIndicator());
           } 
            
            
          return ListView.builder(
              itemCount: toDo.length ,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (DismissDirection deirection) {
                    context.read<AddTask>().deleteTask(toDo[index].uid);
                    
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: containerDecoration,
                      child: ListTile(
                          onTap: () {
                            bool newCompleteTodo = !toDo[index].isComplete;
                            context.read<AddTask>().checkTask(toDo[index].uid, newCompleteTodo);
                          },
                          trailing: Container(                            
                            color: Colors.blueAccent,
                            height: 20,
                            width: 20,
                            child: toDo[index].isComplete
                                ? const Icon(Icons.check)
                                : Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.blueAccent,
                                  ),
                          ),
                          title: Text(
                           toDo[index].title,  
                            style: TextStyle(
                              fontSize: 20,
                              decoration: toDo[index].isComplete
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          )),
                    ),
                  ),
                );
              });
        },
      );}),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade300,
        onPressed: () {
          
          showDialog(
              context: context, builder: (context) => const ToDoDialogWidget());
              
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
