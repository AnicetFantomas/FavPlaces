import 'package:flutter/material.dart';

class NewPlace extends StatefulWidget {
  const NewPlace({super.key});

  @override
  State<NewPlace> createState() => _NewPlaceState();
}

class _NewPlaceState extends State<NewPlace> {
  final TextEditingController _textController = TextEditingController();

  void _savePlace() {
    String enteredName = _textController.text;
    print('Entered name: $enteredName');
    Navigator.of(context).pop(enteredName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new place'),
      ),
      body: Padding(padding: const EdgeInsets.all(12),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              maxLength: 50,
              controller: _textController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButton(onPressed: _savePlace, child: const Text('Add Place')),

          ],
        ),
      ),
      )
    );
  }
}