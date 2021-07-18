class HotDestinations {
  final String image;
  final String placeName;
  final String description;
  final String placeCount;
  final List<Map> destinationImages;
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
      {
        "name":"New York",
        "description":"New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean.",
        "image":"assets/images/america-1.jpg",
      },
      {
        "name":"San Francisco",
        "description":"San Francisco, officially the City and County of San Francisco, is a cultural, commercial, and financial center in Northern California.",
        "image":"assets/images/america-2.jpg",
      },
      {
        "name":"Los Angeles",
        "description":"Los Angeles is a sprawling Southern California city and the center of the nation’s film and television industry.",
        "image":"assets/images/america-3.jpg",
      },
      {
        "name":"Alaska",
        "description":"Alaska is a U.S. state in the Western United States, on the northwest extremity of the country's west coast.",
        "image":"assets/images/america-4.jpg",
      }
    ],
  ),
  HotDestinations(
    image: "assets/images/japan-home.jpg",
    description: "Japan is an island country in East Asia, located in the northwest Pacific Ocean. It is bordered on the west by the Sea of Japan, and extends from the Sea of Okhotsk in the north toward the East China Sea and Taiwan in the south.",
    placeName: "JAPAN",
    placeCount: "10",
    destinationImages: [
      {
        "name":"Tokyo",
        "description":"Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples.",
        "image":"assets/images/japan-1.jpg",
      },
      {
        "name":"Kyoto",
        "description":"Kyoto, once the capital of Japan, is a city on the island of Honshu. It's famous for its numerous classical Buddhist temples, as well as gardens, imperial palaces, Shinto shrines and traditional wooden houses.",
        "image":"assets/images/japan-2.jpg",
      },
      {
        "name":"Osaka",
        "description":"Osaka is a large port city and commercial center on the Japanese island of Honshu. It's known for its modern architecture, nightlife and hearty street food. ",
        "image":"assets/images/japan-3.jpg",
      },
      {
        "name":"Hiroshima",
        "description":"Hiroshima, a modern city on Japan’s Honshu Island, was largely destroyed by an atomic bomb during World War II.",
        "image":"assets/images/japan-4.jpg",
      }
    ],
  ),
  HotDestinations(
    image: "assets/images/paris-1.jpg",
    description: "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture",
    placeName: "PARIS",
    placeCount: "20",
    destinationImages: [
      {
        "name":"Eiffel Tower",
        "description":"The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.",
        "image":"assets/images/paris-1.jpg",
      },
      {
        "name":"Louvre Museum",
        "description":"The Louvre, or the Louvre Museum, is the world's largest art museum and a historic monument in Paris, France, and is best known for being the home of the Mona Lisa.",
        "image":"assets/images/paris-2.jpg",
      },
      {
        "name":"Cathédrale Notre-Dame de Paris",
        "description":"Notre-Dame de Paris, referred to simply as Notre-Dame, is a medieval Catholic cathedral on the Île de la Cité in the 4th arrondissement of Paris. The cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture.",
        "image":"assets/images/paris-3.jpg",
      },
      {
        "name":"Arc de Triomphe",
        "description":"The Arc de Triomphe de l'Étoile is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées at the centre of Place Charles de Gaulle, formerly named Place de l'Étoile—the étoile or star of the juncture formed by its twelve radiating avenues.",
        "image":"assets/images/paris-4.jpg",
      }
    ],
  ),
  HotDestinations(
    image: "assets/images/indonesia-1.jpg",
    description: "Indonesia, officially the Republic of Indonesia, is a country in Southeast Asia and Oceania between the Indian and Pacific oceans. It consists of over seventeen thousand islands, including Sumatra, Java, Sulawesi, and parts of Borneo and New Guinea",
    placeName: "INDONESIA",
    placeCount: "66",
    destinationImages: [
      {
        "name":"Gili Islands",
        "description":"Las islas Gili son un archipiélago compuesto por tres islas al noroeste de la costa de Lombok, Indonesia.",
        "image":"assets/images/indonesia-1.jpg",
      },
      {
        "name":"Uluwatu Temple",
        "description":"Uluwatu Temple is a Balinese Hindu sea temple located in Uluwatu. The temple is regarded as one of the sad kahyangan and is dedicated to Sang Hyang Widhi Wasa in his manifestation as Rudra.",
        "image":"assets/images/indonesia-2.jpg",
      },
      {
        "name":"Borobudur Temple",
        "description":"Borobudur, also transcribed Barabudur is a 7th-century Mahayana Buddhist temple in Magelang Regency, not far from the town of Muntilan, in Central Java, Indonesia. It is the world's largest Buddhist temple.",
        "image":"assets/images/indonesia-3.jpg",
      },
      {
        "name":"Tanah Lot",
        "description":"Tanah Lot is a rock formation off the Indonesian island of Bali. It is home to the ancient Hindu pilgrimage temple Pura Tanah Lot, a popular tourist and cultural icon for photography.",
        "image":"assets/images/indonesia-4.jpg",
      }
    ],
  )
];

