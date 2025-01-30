import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddNoteScreen extends StatelessWidget {
  final TextEditingController _noteController = TextEditingController();

  void _addNote() async {
    String note = _noteController.text.trim();

    if (note.isNotEmpty) {
      await FirebaseFirestore.instance.collection('notes').add({
        'note': note,
        'timestamp': FieldValue.serverTimestamp(),
      }).then((value) {
        print("Note Added Successfully!");
      }).catchError((error) {
        print("Failed to add note: $error");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _noteController,
              decoration: InputDecoration(labelText: 'Enter Note'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _addNote();
                Navigator.pop(context);
              },
              child: Text('Add Note'),
            ),
          ],
        ),
      ),
    );
  }
}
