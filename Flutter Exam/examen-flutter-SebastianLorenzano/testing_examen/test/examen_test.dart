import 'package:test/test.dart';
import 'package:testing_examen/examen/examen.dart';

void main() {
  test('Ordena lista. Deberia devolver -1', () {
    Examen examen = Examen();
    expect(examen.encontrar([], true), -1); 
  });

  test('Ordena lista. Deberia devolver 4', () {
    Examen examen = Examen();
    expect(examen.encontrar([5, 6, 4], true), 4); 
  });

  test('Ordena lista. Deberia devolver 6', () {
    Examen examen = Examen();
    expect(examen.encontrar([5, 6, 4], false), 6); 
  });
}