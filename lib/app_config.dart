import 'package:appwrite/appwrite.dart';

class AppConfig {
  late Client client;
  late Account account;
  late Databases database;
  late Storage storage;
  final String databaseID = '69fbfe19000eb3d0b15b';
  final String storageID = '6a0e7a87000932b8e827';
  final String endpoint = 'https://sgp.cloud.appwrite.io/v1';
  final String projectID = '69f2c362002c408ccf96';
  //joZnafQu036beeb8f93b1bd6gqvNG2Lp raja ongkir
  // 69fbfe180001f1f261f5

  AppConfig() {
    client = Client().setEndpoint(endpoint).setProject(projectID);
    account = Account(client);
    database = Databases(client);
    storage = Storage(client);
  }
}
