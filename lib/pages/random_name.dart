import 'dart:math';

String randomName() {
  final rand = Random();
  return [
    'João Eustácio',
    'Érica Santos',
    'Marcos Bezerra',
    'Gilberto Gonçalves',
    'Leonardo Rocha'
  ].elementAt(rand.nextInt(5));
}
