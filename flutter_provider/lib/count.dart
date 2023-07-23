import 'package:flutter/material.dart';
import 'package:flutter_provider/provider.dart';
import 'package:provider/provider.dart';

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myProvider = context.watch<Counter>();
    return Text(myProvider.count.toString(), textScaleFactor: 7,);
  }
}
