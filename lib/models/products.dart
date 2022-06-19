class Products {
  final String imags, catrgory, title, des, subtitle;
  final int id, price;
  Products(
      {required this.imags,
      required this.catrgory,
      required this.title,
      required this.des,
      required this.subtitle,
      required this.id,
      required this.price});
}

List<Products> products = [
  Products(
    id: 1,
    catrgory: 'بسكويت',
    title: 'بسكوت ابو ولد',
    price: 200,
    des: "بسكويت من انتاج شركة هائل سعيد انعم ",
    subtitle: 'بسكويت',
    imags: 'image/bascot.png',
  ),
  Products(
    id: 2,
    catrgory: 'منظفات',
    title: 'صابون كرستال',
    price: 200,
    des: "بسكويت من انتاج شركة هائل سعيد انعم ",
    subtitle: 'بسكويت',
    imags: 'image/crystal2.png',
  ),
  Products(
    id: 3,
    catrgory: 'عصائر',
    title: 'عصير راني',
    price: 200,
    des: "عصير عائلي انتاج سعودي ",
    subtitle: 'بسكويت',
    imags: 'image/ranijuice.png',
  ),
];
