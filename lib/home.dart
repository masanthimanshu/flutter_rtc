import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fsl_demo/controller/sample_controller.dart';
import 'package:fsl_demo/models/sample_model.dart';
import 'package:fsl_demo/network/endpoints.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<HomePage> {
  final List<Map<String, dynamic>> _dataSet = [];

  _handleClick({required List<SysNav0> data}) {
    _dataSet.clear();

    for (var ele in data) {
      if (ele.parentmoduleid == 0) {
        _dataSet.add({
          "name": ele.modulename,
          "moduleId": ele.moduleid,
        });
      }
    }

    setState(() {});
  }

  _printResult({required List<SysNav0> data, required int moduleId}) {
    _dataSet.clear();

    for (var ele in data) {
      if (ele.parentmoduleid == moduleId) {
        _dataSet.add({
          "name": ele.modulename,
          "moduleId": ele.moduleid,
        });
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final response = ref.watch(
      getSampleDataProvider(APIEndpoints().loginEndpoint),
    );

    return Scaffold(
      appBar: AppBar(title: const Text("FSL Demo")),
      body: response.hasValue
          ? Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _handleClick(data: response.value!.sysNav0);
                  },
                  child: const Text("Click Here"),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _dataSet.length,
                    itemBuilder: (e, index) {
                      return TextButton(
                        onPressed: () {
                          _printResult(
                            data: response.value!.sysNav0,
                            moduleId: _dataSet[index]["moduleId"],
                          );
                        },
                        child: Text(_dataSet[index]["name"]),
                      );
                    },
                  ),
                ),
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
