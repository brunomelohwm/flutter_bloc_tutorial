import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_tutorial/blocs/client_events.dart';
import '../repositories/clients_repository.dart';
import 'client_state.dart';

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  final _clientRepo = ClientsRepository();

  // final StreamController<ClientEvent> _inputClientController =
  //     StreamController<ClientEvent>();

  // final StreamController<ClientState> _outputClientController =
  //     StreamController<ClientState>();

  // Sink<ClientEvent> get inputClient => _inputClientController.sink;
  // Stream<ClientState> get stream => _outputClientController.stream;

  ClientBloc() : super(ClientInitialState()) {
    //_inputClientController.stream.listen(_mapEventToState);

    on<LoadClientEvent>(
      (event, emit) =>
          emit(ClientSuccessState(clients: _clientRepo.loadClients())),
    );

    on<AddClientEvent>(
      (event, emit) => emit(
          ClientSuccessState(clients: _clientRepo.addClients(event.client))),
    );

    on<RemoveClientEvent>(
      (event, emit) => emit(
          ClientSuccessState(clients: _clientRepo.removeClients(event.client))),
    );
  }

  //_mapEventToState(ClientEvent event) {
  //  List<Client> clients = [];
  //  if (event is LoadClientEvent) {
  //    clients = _clientRepo.loadClients();
  //  } else if (event is AddClientEvent) {
  //    clients = _clientRepo.addClients(event.client);
  //  } else if (event is RemoveClientEvent) {
  //    clients = _clientRepo.removeClients(event.client);
  //  }
//
  //  _outputClientController.add(ClientSuccessState(clients: clients));
  //}
}
