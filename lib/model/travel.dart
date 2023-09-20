class Travel{
  String name;
  String location;
  String img;

  Travel(this.name,this.location,this.img);
  
  static List<Travel> travelInfo(){
    return [
      Travel('Product Name', 'Dhaka-Cantonment', 'assets/images/register.png') ,
      Travel('Product Name', 'Dhaka-Cantonment', 'assets/images/register.png') ,
      Travel('Product Name', 'Dhaka-Cantonment', 'assets/images/register.png') ,
      Travel('Product Name', 'Dhaka-Cantonment', 'assets/images/register.png') ,
    ];
  }
}