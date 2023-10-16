import 'package:provider/provider.dart';
import 'package:provider_sample/provider/album_provider.dart';
import 'package:provider_sample/provider/plus_provider.dart';

class Providers {
  static List<ChangeNotifierProvider> providers = [
    ChangeNotifierProvider<AlbumProvider>(create: (context) => AlbumProvider()),
    ChangeNotifierProvider<plusProvider>(create: (context) => plusProvider()),
  ];
}
