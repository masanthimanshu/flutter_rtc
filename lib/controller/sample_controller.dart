import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fsl_demo/models/sample_model.dart';
import 'package:fsl_demo/network/requests.dart';

final getSampleDataProvider = FutureProvider.family((ref, String url) {
  return SampleController().getData(url);
});

class SampleController {
  Future<SampleModel?> getData(String url) async {
    final data = await GetRequest().getJsonData(url);

    if (data != null) return sampleModelFromJson(data);
    return null;
  }
}
