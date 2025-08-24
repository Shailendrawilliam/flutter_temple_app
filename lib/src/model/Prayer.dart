class Prayer{
  int id;
  String name ;
  String category ;
  String image ;
  String content ;
  bool isliked ;
  bool isSelected ;
  Prayer({required this.id,required this.name,
    required this.category, required this.content,
    required this.isliked,this.isSelected = false,
    required this.image});
}