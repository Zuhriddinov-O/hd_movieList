enum CategoryType {
  horror,
  love,
  cartoon,
  war;
}

class HorrorCategory {
  int id;
  String images, names;
  double ratings;

  HorrorCategory(
      {required this.id,
      required this.images,
      required this.names,
      required this.ratings});
}

class LoveCategory {
  int id;
  String images, names;
  double ratings;

  LoveCategory(
      {required this.id,
      required this.images,
      required this.names,
      required this.ratings});
}

class CartoonCategory {
  int id;
  String images, names;
  double ratings;

  CartoonCategory(
      {required this.id,
      required this.images,
      required this.names,
      required this.ratings});
}

class WarCategory {
  int id;
  String images, names;
  double ratings;

  WarCategory(
      {required this.id,
      required this.images,
      required this.names,
      required this.ratings});
}

List<HorrorCategory> horrorCategory = [
  HorrorCategory(
      id: 0,
      images: "https://cfm.yidio.com/images/movie/229530/poster-360x540.jpg",
      names: "The Heiress",
      ratings: 5.7),
  HorrorCategory(
      id: 1,
      images: "https://cfm.yidio.com/images/movie/64147/poster-360x540.jpg",
      names: "The Autopsy of Jane Doe",
      ratings: 6.8),
  HorrorCategory(
      id: 2,
      images: "https://cfm.yidio.com/images/movie/198309/poster-360x540.jpg",
      names: "Clinton Road",
      ratings: 3.0),
  HorrorCategory(
      id: 3,
      images: "https://cfm.yidio.com/images/movie/81897/poster-360x540.jpg",
      names: "Wait Till Helen Comes",
      ratings: 5.0),
  HorrorCategory(
      id: 4,
      images: "https://cfm.yidio.com/images/movie/166124/poster-360x540.jpg",
      names: "Nun",
      ratings: 2.3),
  HorrorCategory(
      id: 5,
      images: "https://cfm.yidio.com/images/movie/44598/poster-360x540.jpg",
      names: "The Girl on the Train",
      ratings: 4.3),
  HorrorCategory(
      id: 6,
      images: "https://cfm.yidio.com/images/movie/34979/poster-360x540.jpg",
      names: "Sinister",
      ratings: 6.8),
  //Horror Category
];
List<LoveCategory> loveCategory = [
  LoveCategory(
      id: 0,
      images: "https://cfm.yidio.com/images/movie/24159/poster-360x540.jpg",
      names: "The Wedding Date",
      ratings: 6.1),
  LoveCategory(
      id: 1,
      images: "https://cfm.yidio.com/images/movie/165947/poster-360x540.jpg",
      names: "Zombie Lover",
      ratings: 5.7),
  LoveCategory(
      id: 2,
      images: "https://cfm.yidio.com/images/movie/21636/poster-360x540.jpg",
      names: "Crash",
      ratings: 7.7),
  LoveCategory(
      id: 3,
      images: "https://cfm.yidio.com/images/movie/65022/poster-360x540.jpg",
      names: "Vision Quest",
      ratings: 6.6),
  LoveCategory(
      id: 4,
      images: "https://cfm.yidio.com/images/movie/41680/poster-360x540.jpg",
      names: "Romeo and Juliet",
      ratings: 5.8), //Love Category
];
List<CartoonCategory> cartoonCategory = [
  CartoonCategory(
      id: 0,
      images: "https://cfm.yidio.com/images/movie/131085/poster-360x540.jpg",
      names: "Sgt. Stubby: An American Hero",
      ratings: 6.9),
  CartoonCategory(
      id: 1,
      images: "https://cfm.yidio.com/images/movie/15162/poster-360x540.jpg",
      names: "Anastasia",
      ratings: 7.1),
  CartoonCategory(
      id: 2,
      images: "https://cfm.yidio.com/images/movie/71385/poster-360x540.jpg",
      names: "Leap!",
      ratings: 6.7),
  CartoonCategory(
      id: 3,
      images: "https://cfm.yidio.com/images/movie/28539/poster-360x540.jpg",
      names: "Madagascar: Escape 2 Africa",
      ratings: 6.1),
  CartoonCategory(
      id: 4,
      images: "https://cfm.yidio.com/images/movie/17221/poster-360x540.jpg",
      names: "Tarzan",
      ratings: 7.3),
  CartoonCategory(
      id: 5,
      images: "https://cfm.yidio.com/images/movie/17184/poster-360x540.jpg",
      names: "South Park: Bigger, Longer & Uncut",
      ratings: 7.7),
  CartoonCategory(
      id: 6,
      images: "https://cfm.yidio.com/images/movie/30681/poster-360x540.jpg",
      names: "Alpha and Omega",
      ratings: 5.1), //Cartoon Category
];
List<WarCategory> warCategory = [
  WarCategory(
      id: 0,
      images: "https://cfm.yidio.com/images/movie/161685/poster-360x540.jpg",
      names: "Invasion Earth",
      ratings: 2.8),
  WarCategory(
      id: 1,
      images: "https://cfm.yidio.com/images/movie/236622/poster-360x540.jpg",
      names: "Sniper: The White Raven",
      ratings: 6.4),
  WarCategory(
      id: 2,
      images: "https://cfm.yidio.com/images/movie/18009/poster-360x540.jpg",
      names: "Shaft",
      ratings: 6.6),
  WarCategory(
      id: 3,
      images: "https://cfm.yidio.com/images/movie/57954/poster-360x540.jpg",
      names: "Gods of Egypt",
      ratings: 5.4),
  WarCategory(
      id: 4,
      images: "https://cfm.yidio.com/images/movie/40313/poster-360x540.jpg",
      names: "In Harm's Way",
      ratings: 7.2),
  WarCategory(
      id: 5,
      images: "https://cfm.yidio.com/images/movie/69850/poster-360x540.jpg",
      names: "The Predator",
      ratings: 5.3),
  WarCategory(
      id: 6,
      images: "https://cfm.yidio.com/images/movie/185642/poster-360x540.jpg",
      names: "Megalodon",
      ratings: 2.8),
  //War Category
];
