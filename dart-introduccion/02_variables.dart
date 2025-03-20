void main() {
  String person = 'Luis';
  double heigth = 1.62;
  bool isTall = false;
  // var caracteristicas = ["serio", "paciente", "resiliente"];
  List<String> caracteristicas = ["serio", "paciente", "resiliente"];
  final properties = <String>["carro", "casa"];

  // ${isTall ? "alto" : "bajo"} ----> Dead code.
  
  // dynamic == null
  
  dynamic errorMsg = 'error!';
  errorMsg = true;
  errorMsg = [1,2,3,4,5];
  errorMsg = {1,2,3,4,5};
  errorMsg = () => "arrow function";
  errorMsg = null;

  print("""
    $person
    $heigth    
    Es alto? $isTall
    $caracteristicas
    $properties
    $errorMsg
  """);
}