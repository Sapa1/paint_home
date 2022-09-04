import 'package:paint_home/modules/home/data/model/paint_response.dart';

abstract class HomeDataSource {
  Future<PaintResponse> getPaint();
}
