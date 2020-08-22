
class Movies {

  List<Movie> listMovies = new List();

  Movies();

  Movies.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final movie = new Movie.fromJsonMap(item);
      listMovies.add(movie);
    }
  }

}

class Movie {
    
    double popularity;
    int voteCount;
    bool video;
    String posterPath;
    int id;
    bool adult;
    String backdropPath;
    String originalLanguage;
    String originalTitle;
    List<int> genreIds;
    String title;
    double voteAverage;
    String overview;
    DateTime releaseDate;

    Movie({
        this.popularity,
        this.voteCount,
        this.video,
        this.posterPath,
        this.id,
        this.adult,
        this.backdropPath,
        this.originalLanguage,
        this.originalTitle,
        this.genreIds,
        this.title,
        this.voteAverage,
        this.overview,
        this.releaseDate,
    });

    Movie.fromJsonMap(Map<String, dynamic> json) {
        popularity       = json["popularity"].toDouble();
        voteCount        = json["vote_count"];
        video            = json["video"];
        posterPath       = json["poster_path"];
        id               = json["id"];
        adult            = json["adult"];
        backdropPath     = json["backdrop_path"] == null ? null : json["backdrop_path"];
        originalLanguage = json["original_language"];
        originalTitle    = json["original_title"];
        genreIds         = json["genre_ids"].cast<int>();
        title            = json["title"];
        voteAverage      = json["vote_average"].toDouble();
        overview         = json["overview"];
        releaseDate      = DateTime.parse(json["release_date"]);
    }
}