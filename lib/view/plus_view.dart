import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/provider/plus_provider.dart';
import 'package:provider_sample/view/check_plus_count.dart';

class PlusWidget extends StatelessWidget {
  const PlusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plus')),
      body: Center(
        child: Column(
          children: [
            Consumer<plusProvider>(
              builder: (context, value, child) {
                return Text('count :: ${value.count}');
              },
            ),
            InkWell(
              onTap: () {
                Provider.of<plusProvider>(context, listen: false).increment();
              },
              child: Text('plus button'),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CheckPlusCount(),
                ));
              },
              child: Text('check count'),
            )
          ],
        ),
      ),
    );
  }
}
