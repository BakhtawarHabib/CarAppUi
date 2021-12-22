class essentialItem {
  String image;
  String name;

  essentialItem({
    required this.image,
    required this.name,
  });
}

List<essentialItem> essentialItems = [
  essentialItem(
    image: "assets/images/vehiclehub/petrol.png",
    name: "Petrol Nearby",
  ),
  essentialItem(
    image: "assets/images/vehiclehub/valuation.png",
    name: "Valuation",
  ),
  essentialItem(
    image: "assets/images/vehiclehub/hpicheck.png",
    name: "HPI Check",
  ),
  essentialItem(
    image: "assets/images/vehiclehub/compliances.png",
    name: "ULEZ Checker",
  ),
  essentialItem(
    image: "assets/images/vehiclehub/regulation.png",
    name: "Regulation Updates",
  ),
];
