class DG{
  int id;
  String name ;
  String category ;
  String path ;
  double price ;
  bool isliked ;
  bool isSelected ;
  DG({required this.id,required this.name,
    required this.category, required this.price,
    required this.isliked,this.isSelected = false,
    required this.path});
}