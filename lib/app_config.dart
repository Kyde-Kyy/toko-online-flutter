import 'package:appwrite/appwrite.dart';

class AppConfig {
  late Client client;
  late Account account;
  late Databases database;
  final String databaseID = '69fbfe19000eb3d0b15b';
  // 69fbfe180001f1f261f5

  AppConfig() {
    client = Client()
        .setEndpoint('https://sgp.cloud.appwrite.io/v1')
        .setProject('69f2c362002c408ccf96');
        account = Account(client);
        database = Databases(client);
  }
}
