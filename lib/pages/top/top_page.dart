import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/components/float_button.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: MessageButton(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                child: Column(
                  children: [
                    Text(
                      '24%',
                      style: TextStyle(
                        fontSize: 56,
                      ),
                    ),
                    Text(
                      '共有まで12%',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 8,
                child: SizedBox(
                  width: 64,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.person,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 24,
                child: Text(
                  '貸し出し中',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
