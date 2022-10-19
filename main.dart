void main() {
  //final это когда value переменной не будет меняться
  final nombre = 'Sergi';
  //Create String
  String apellido = 'Padzh';
  int edad = 18;

  apellido = 'Kostyuchenko';
  //nombre = 'Roma' Имя нельзя изменить так как мы заявили final;

  print(
      '¡Hola! $nombre $apellido! ¿Cómo estás? Sabemos que ya tienes $edad años para tu felicidad!');
}
