import 'package:paint_home/core/dio/paint_dio.dart';
import 'package:paint_home/modules/home/data/model/paint_response.dart';

import 'home_datasource.dart';

class HomeDataSourceImpl implements HomeDataSource {
  final PaintDio paintDio;

  HomeDataSourceImpl(this.paintDio);

  @override
  Future<PaintResponse> getPaint() async {
    final response = await paintDio.get('/paints');
    return PaintResponse.fromMap(response.data);
  }
}
