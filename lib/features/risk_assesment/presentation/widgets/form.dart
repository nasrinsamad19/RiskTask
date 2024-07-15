import 'package:flutter/material.dart';

class DataEntry extends StatefulWidget {
  const DataEntry({super.key});

  @override
  State<DataEntry> createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('hi'),
              TextFormField(
                controller: noteController,
                maxLines: 5,
                minLines: 3,

                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    isDense: true,
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                        color: Colors.black
                    ),
                    labelText: 'Enter Notes..'
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
