class Activity {
  String? imageUrl;
  String? name;
  String? type;
  String? city;
  List<String>? startTime;
  int? rating;
  int? price;

  Activity(
      {this.imageUrl,
      this.name,
      this.price,
      this.rating,
      this.startTime,
      this.type,
      this.city});
}
