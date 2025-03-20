void main() {
  final n = new Note("Receta", "Harina, huevos, queso", false);

  print(n);
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

  Note(this.title, this.content, this.pined);
}
