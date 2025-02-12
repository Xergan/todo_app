/*

TO DO MODEL

This is what a todo object is.


-----------------------------------

Properties:
| id | text | isCompleted |

-----------------------------------

Methods:
-> Toggle completion status of a todo

*/

class Todo {
  final int id;
  final String text;
  final bool isCompleted;

  Todo({
    required this.id,
    required this.text,
    this.isCompleted = false, // Incomplete by default
  });

  Todo toggleCompletion() {
    return Todo(
      id: id,
      text: text,
      isCompleted: !isCompleted,
    );
  }
}