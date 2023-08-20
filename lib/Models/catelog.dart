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
// this is Extract the from the Model class
final products = [
  Items(
      id: 1,
      name: 'iPhone 11',
      desc: "The iPhone 11 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle",
      price: 50000,
      color: 'White',
      image: 'https://www.google.com/aclk?sa=l&ai=DChcSEwi7r9uX7OqAAxWo0RYFHVO-C2cYABAFGgJ0bA&ase=2&gclid=Cj0KCQjw84anBhCtARIsAISI-xcZTE1UbVLKXsKoNu0ROaSBAk2h7jpsnnwX56hXLHxaQDNuN_O35yEaAgXIEALw_wcB&sig=AOD64_3-BB2rzyzuBTiZXBAIdsjpd-v_Zg&ctype=5&nis=5&adurl&ved=2ahUKEwiNm8mX7OqAAxV-5TgGHbHrBL0Qvhd6BAgBEGI')
];