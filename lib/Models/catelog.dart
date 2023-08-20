class CatelogModel{
  static final items = [
    Items(
        id: 1,
        name: 'iPhone 11',
        desc: "The iPhone 11 display has rounded corners ",
        price: 50000,
        color: 'White',
        image: 'https://rukminim2.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/k/y/d/iphone-11-256-u-mwm82hn-a-apple-0-original-imafkg25mhaztxns.jpeg?q=70')
  ];
}


// This is Model Class
class Items{
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}