import 'package:flutter/material.dart';

class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key});

  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  final _formKey = GlobalKey<FormState>();
  final  _habitNameController = TextEditingController();
  final  _descriptionController = TextEditingController();

  @override
  void dispose() {
    _habitNameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New Habit")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 8,
          children: [
            Form(
              key: _formKey,
              child: Column(
                spacing: 8,
                children: [
                  TextFormField(
                    controller: _habitNameController,
                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      label: Text("Habit Name"),
                      hintText: "e.g. Drinking Water",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a habit name";
                      }
                      return null;
                    },
                  ),
                  

                  TextFormField(
                    controller: _descriptionController,
                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      label: Text("Description"),
                      hintText: "e.g. Drink 2 liters of water",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a habit description ";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),

            FilledButton(
              onPressed: () {
                if(!_formKey.currentState!.validate()){
                  return;
                }
                debugPrint("Habit Name: ${_habitNameController.text}");
                debugPrint("Description: ${_descriptionController.text}");
              },
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(Size.fromHeight(50)),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                )),
              ),
              child: Text("Add Habit"),
            )
          ],
        ),
      ),
      
    );
  }
}