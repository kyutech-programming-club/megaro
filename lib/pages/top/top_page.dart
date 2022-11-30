import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/components/float_button.dart';
import 'package:flutter_template/components/appbar_title.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/providers/infrastructure_providers.dart';


class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final examples = ref.watch(examplesStreamProvider);
    return Scaffold(
      floatingActionButton: FloatButton(),
      appBar: AppBar(
        backgroundColor: ColorConstant.purple100,
        foregroundColor: ColorConstant.purple0,
        elevation: 0.5,
        title: AppbarTitle(),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 136,
        child: examples.when(
          data: (data) {
            return Center(child: Text('test'));
          },
          error: (error, _) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
