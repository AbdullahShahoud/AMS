// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DroubDown extends StatefulWidget {
   String selected;
  List<String> content;
  DroubDown({required this.selected,required this.content});

  @override
  State<DroubDown> createState() => _DroubDownState();
}

class _DroubDownState extends State<DroubDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        style: TextStyle(fontSize: 25, color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        value: widget.selected,
        items: widget.content
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: (item) {
          setState(() {
            widget.selected = item!;
          });
        });
  }
}
