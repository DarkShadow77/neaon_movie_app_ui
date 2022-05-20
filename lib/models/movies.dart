class Movies {
  final String movieName;
  final String movieThumb;
  final String movieCover;
  final String movieYear;
  final String movieGenre;
  final String movieTimeLapse;
  final String movieDesc;
  final List<dynamic> movieCast;

  Movies(
    this.movieName,
    this.movieThumb,
    this.movieCover,
    this.movieYear,
    this.movieGenre,
    this.movieTimeLapse,
    this.movieDesc,
    this.movieCast,
  );

  factory Movies.fromJson(Map<String, dynamic> json) {
    return new Movies(
      json["movieName"],
      json["movieThumb"],
      json["movieCover"],
      json["movieYear"],
      json["movieGenre"],
      json["movieTimeLapse"],
      json["movieDesc"],
      json["movieCast"],
    );
  }
}

class Cast {
  final String castName;
  final String castImage;

  Cast(
    this.castName,
    this.castImage,
  );

  factory Cast.fromJson(Map<String, dynamic> json) {
    return new Cast(
      json["castName"],
      json["castImage"],
    );
  }
}
