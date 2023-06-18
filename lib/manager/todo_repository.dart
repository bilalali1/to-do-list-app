import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/todo_model.dart';

class TodoRepository {
  final CollectionReference _todosCollection =
  FirebaseFirestore.instance.collection('todos');

  Stream<List<Todo>> getTodos() {
    return _todosCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return Todo(
          id: doc.id,
          title: data['title'],
          isCompleted: data['isCompleted'],
        );
      }).toList();
    });
  }

  Future<void> addTodo(Todo todo) {
    return _todosCollection.add({
      'title': todo.title,
      'isCompleted': todo.isCompleted,
    });
  }

  Future<void> updateTodo(Todo todo) {
    return _todosCollection.doc(todo.id).update({
      'title': todo.title,
      'isCompleted': todo.isCompleted,
    });
  }

  Future<void> deleteTodoById(String id) {
    return _todosCollection.doc(id).delete();
  }
}
