class item {
  String image;
  String name;
  double price;
  String transactionID;
  String date;

  item({
    required this.image,
    required this.name,
    required this.date,
    required this.transactionID,
    required this.price,
  });
}

List<item> items = [
  item(
    image: "assets/images/congestion.png",
    name: "Congestion Charge",
    date: "04/11/2021",
    transactionID: "E2Y9KWJB",
    price: 15.00,
  ),
  item(
    image: "assets/icons/ulezlogo.png",
    name: "ULEZ Charge",
    date: "05/11/2021",
    transactionID: "PXLXUG3R",
    price: 12.00,
  ),
  item(
    image: "assets/images/tolls.png",
    name: "Tolls Charge",
    date: "02/11/2021",
    transactionID: "ZS4RAF8L",
    price: 4.00,
  ),
  item(
    image: "assets/images/caz.png",
    name: "CAZ Charge",
    date: "08/11/2021",
    transactionID: "YVMR9NLP",
    price: 8.00,
  ),
  item(
    image: "assets/images/hpii.png",
    name: "HPI Check Charge",
    date: "05/11/2021",
    transactionID: "UGPEFDEH",
    price: 9.99,
  ),
];
