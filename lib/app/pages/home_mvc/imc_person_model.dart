class PersonModel {
  double peso;
  double altura;

  PersonModel({
    required this.peso,
    required this.altura,
  });

  double calcImc() {
    return peso / (altura * altura);
  }
}
