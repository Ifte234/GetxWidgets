import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarkFavScreen extends StatefulWidget {
  const MarkFavScreen({Key? key}) : super(key: key);

  @override
  State<MarkFavScreen> createState() => _MarkFavScreenState();
}

class _MarkFavScreenState extends State<MarkFavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark Favourite App'),
      ),
    );
  }
}
