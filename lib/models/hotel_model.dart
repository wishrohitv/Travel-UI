class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/one.jpg',
      name: 'Taj hotel',
      address: 'mumbai',
      price: 1999),
  Hotel(
      imageUrl: 'assets/images/two.jpg',
      name: 'Taj hotel',
      address: 'mumbai',
      price: 1999),
  Hotel(
      imageUrl: 'assets/images/three.jpg',
      name: 'Taj hotel',
      address: 'mumbai',
      price: 1999),
  Hotel(
      imageUrl: 'assets/images/four.jpg',
      name: 'Taj hotel',
      address: 'mumbai',
      price: 1999),
];
