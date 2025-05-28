extension DigitSplitter on int {
  String get split {
    String ananas = this.toString();
    if (ananas.length % 2 != 0) {
      ananas = '0$ananas';
    }
    List<String> ananas1 = [];
    for (var i = 0; i < ananas.length; i += 2) {
      ananas1.add(ananas.substring(i, i + 2));
    }
    return ananas1.join(":");
  }
}
