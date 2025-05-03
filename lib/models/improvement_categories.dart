enum ImprovementCategory {
  compras('Compras'),
  salud('Salud'),
  entretenimiento('Entretenimiento'),
  alimentacion('Alimentación'),
  transporte('Transporte');

  const ImprovementCategory(this.displayName);

  final String displayName;
}
