class Slot{
  int id;
  String name ;
  String shift ;
  String image ;
  String timing ;
  bool isliked ;
  bool isSelected ;
  Slot({required this.id,required this.name, required this.shift, required this.timing, required this.isliked,this.isSelected = false,required this.image});
}