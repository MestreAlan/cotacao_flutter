class Currency {
  final String name;
  final double buy;
  final double? sell;
  final double variation;

  Currency({
    required this.name,
    required this.buy,
    this.sell,
    required this.variation,
  });

  factory Currency.fromMap(Map<String, dynamic> map) {
    return Currency(
      name: map['name'],
      buy: map['buy'],
      sell: map['sell'],
      variation: map['variation'],
    );
  }
}
