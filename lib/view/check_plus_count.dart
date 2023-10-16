import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/provider/plus_provider.dart';

class CheckPlusCount extends StatelessWidget {
  const CheckPlusCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<plusProvider>(
        builder: (context, value, child) => Text('${value.count}'),
      ),
    );
  }
}
