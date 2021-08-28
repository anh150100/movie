class ActorModel{
  String image;
  String filmName;
  ActorModel({required this.image,required this.filmName});
}

List <ActorModel> listActor = [
  ActorModel(
      image: "assets/image/Movie.png",
      filmName: "Avengers:  End Game"
  ),
  ActorModel(
      image: "assets/image/Movie5.png",
      filmName: "IronMan"
  ),
  ActorModel(
      image: "assets/image/Movie6.png",
      filmName: "Sherlock Holmes"
  ),
];