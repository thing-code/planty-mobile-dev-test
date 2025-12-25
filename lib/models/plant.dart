class Plant {
  final String title;
  final String desc;
  final double price;
  final double? discountPercentage;

  Plant({
    required this.title,
    required this.desc,
    required this.price,
    this.discountPercentage,
  });

  Plant copyWith({
    String? title,
    String? desc,
    double? price,
    double? discountPercentage,
  }) {
    return Plant(
      title: title ?? this.title,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      discountPercentage: discountPercentage ?? this.discountPercentage,
    );
  }

  @override
  String toString() {
    return 'Plant(title: $title, desc: $desc, price: $price, discountPercentage: $discountPercentage)';
  }
}
