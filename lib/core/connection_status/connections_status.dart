abstract class ConnectionStatus {
  Future<bool> isConnected();
  Future<bool> checkInternetConnection();
}
