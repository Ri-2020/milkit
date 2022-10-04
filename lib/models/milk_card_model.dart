class MilkModel {
  double? amount;
  double? price;
  DateTime? datetime;

  MilkModel({
    this.amount,
    this.price,
    this.datetime,
  });

  //from json
  factory MilkModel.fromJson(Map<String, dynamic> json) => MilkModel(
        amount: json["amount"],
        price: json["price"],
        datetime: DateTime.parse(json["datetime"]),
      );

  // tomap
  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'price': price,
      'datetime': datetime!.toIso8601String(),
    };
  }

  // frommap
  factory MilkModel.fromMap(Map<String, dynamic> map) {
    return MilkModel(
      amount: map['amount'],
      price: map['price'],
      datetime: DateTime.parse(map['datetime']),
    );
  }
}
