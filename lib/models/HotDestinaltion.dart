class HotDestinations {
  final String image;
  final String placeName;
  final String description;
  final String placeCount;
  final List<String> destinationImages;
  HotDestinations({
    required this.image,
    required this.placeName,
    required this.description,
    required this.placeCount,
    required this.destinationImages
  });
}

List<HotDestinations> hotDestinations = [
  HotDestinations(
    image: "assets/images/bridge.jpg",
    description: "The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean.  \n \nMajor Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking",
    placeName: "AMERICA",
    placeCount: "18",
    destinationImages: [
      "assets/images/america-1.jpg",
      "assets/images/america-2.jpg",
      "assets/images/america-3.jpg",
      "assets/images/america-4.jpg",
    ],
  ),
  HotDestinations(
    image: "assets/images/japan-home.jpg",
    description: "The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. \n\n Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking",
    placeName: "JAPAN",
    placeCount: "10",
    destinationImages: [
      "assets/images/japan-1.jpg",
      "assets/images/japan-2.jpg",
      "assets/images/japan-3.jpg",
      "assets/images/japan-4.jpg",
    ],
  ),
  HotDestinations(
    image: "assets/images/paris-1.jpg",
    description: "The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. \n\n Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking",
    placeName: "PARIS",
    placeCount: "20",
    destinationImages: [
      "assets/images/paris-1.jpg",
      "assets/images/paris-2.jpg",
      "assets/images/paris-3.jpg",
      "assets/images/paris-4.jpg",
    ],
  ),
  HotDestinations(
    image: "assets/images/indonesia-1.jpg",
    description: "The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. \n\n Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking",
    placeName: "INDONESIA",
    placeCount: "66",
    destinationImages: [
      "assets/images/indonesia-1.jpg",
      "assets/images/indonesia-2.jpg",
      "assets/images/indonesia-3.jpg",
      "assets/images/indonesia-4.jpg",
    ],
  )
];

