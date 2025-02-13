class Examen{

  int encontrar(List<int> lista, bool menor) {

    if (lista.isNotEmpty) {
      int extremo;
      
      if (menor) {
        extremo = lista[0];
        for (int i = 1; i < lista.length; i++) {
          if (lista[i] < extremo) {
            extremo = lista[i];
          }
        }
      } else {
        extremo = lista[0];
        for (int i = 1; i < lista.length; i++) {
          if (lista[i] > extremo) {
            extremo = lista[i];
          }
        }
      }
      return extremo;
    }
    return -1;
  }
  
}