String detectTriangle(num sideA, num sideB, num sideC) {
  final sides = [sideA, sideB, sideC];
  sides.sort();

  sides.forEach((side) {
    if (side < 1) {
      throw Exception();
    }
  });

  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception('This is Inequal Triangle');
  }

  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return 'Segitiga Sama Sisi';
  }

  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return "Segitiga Sama Kaki";
  }

  return 'Segitiga Sembarang';
}
