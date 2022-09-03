export 'dio_adapter_unsupported.dart'
    if (dart.library.html) 'web/web_dio_adapter.dart'
    if (dart.library.io) 'mobile/mobile_dio_adapter.dart';
