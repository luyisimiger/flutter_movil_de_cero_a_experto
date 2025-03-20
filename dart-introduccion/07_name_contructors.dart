void main() {
  final receta = new Note(title: "Receta", content: "Harina, huevos, queso");

  print(receta);
  receta.pined = true;
  print(receta);

  var rawJson = {"title": "El nuevo titulo", "content2": "vacio", "pined1": true};
  
  final otherNote = Note.fromJSON( rawJson );
  
  print(otherNote);
}

class Note {
  String title;
  String content;
  bool pined;

  /*
  Note(String tit, String content, p)
    : title = tit,
      content = content,
      pined = p
  */

  Note({
    required this.title,
    this.content = "SIN CONTENIDO",
    this.pined = false,
  });
  
  Note.fromJSON( Map<String, dynamic> json )
    : title = json["title"] ?? 'no - title',
      content = json["content"] ?? 'no - content',
      pined = json["pined"] ?? false;
  

  @override
  String toString() {
    return "${pined ? "[PINED] " : ""}$title: $content";
  }
}
