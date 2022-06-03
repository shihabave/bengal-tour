class Area {
  String? imageUrl;
  String? name;
  String? address;
  int? price;

  Area({this.address, this.imageUrl, this.name, this.price});
}

final List<Area> area = [
  Area(
    imageUrl: 'imaages/wellcome-bb.jpg',
    name: " Area Number One",
    address: 'dhaka, bangladesh',
    price: 860,
  ),
  Area(
    imageUrl: 'imaages/wellcome-bb.jpg',
    name: " Area Number One",
    address: 'dhaka, bangladesh',
    price: 900,
  ),
  Area(
    imageUrl: 'imaages/wellcome-bb.jpg',
    name: " Area Number One",
    address: 'dhaka, bangladesh',
    price: 453,
  ),
];
