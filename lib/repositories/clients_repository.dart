import 'package:flutter_bloc_tutorial/models/client.dart';

class ClientsRepository {
  final List<Client> _clients = [];

  List<Client> loadClients() {
    _clients.addAll([
      Client(nome: 'Ellen Melo Costa'),
      Client(nome: 'Breno Moraes de Oliveira'),
      Client(nome: 'Renato dos Santos'),
      Client(nome: 'Ronaldo Junior Silva'),
    ]);

    return _clients;
  }

  List<Client> addClients(Client client) {
    _clients.add(client);
    return _clients;
  }

  List<Client> removeClients(Client client) {
    _clients.remove(client);
    return _clients;
  }
}
