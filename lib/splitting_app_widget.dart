import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(AnotherApps());
}

class AnotherApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SplittingWidget(),
    );
  }

}

class SplittingWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splitting Widget'),
      ),
      body: Container(
        child: Column(
          children: [
            CategoryList(),
            ContactList(),
            SubCategoryItem(),
            BottomMenu(),
          ],
        ),
      ),
    );
  }

}

class CategoryList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex:2,
        child: Container(
          color: Colors.black,
          child: ListView.builder(
              itemBuilder: (context, index)=>Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 100,
                  child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,),),
              ),
              itemCount:18, scrollDirection:Axis.horizontal),)
    );
  }

}

class ContactList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex:4,
        child: Container(
          color: Colors.tealAccent,
          child: ListView.builder(itemBuilder: (context, index)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.orangeAccent,),
              title: Text('name'),
              subtitle: Text('Mobile'),
              trailing: Icon(Icons.delete),
            ),
          ),
          ),
        )
    );
  }

}

class SubCategoryItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex:2,
        child: Container(
          color: Colors.cyan,
          child: ListView.builder(itemBuilder: (context, index)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.pink,
              ),
            ),
          ), itemCount: 10, scrollDirection: Axis.horizontal,),
        )
    );
  }

}

class BottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex:2,
        child: Container(
          color: Colors.blue,
          child: GridView.count(crossAxisCount: 4,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.teal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.teal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.teal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

}










// class SplittingWidget extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return SplittingWidgetState();
//   }
//
// }
//
// class SplittingWidgetState extends State<SplittingWidget>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Splitting Widget'),
//       ),
//       body: ,
//     );
//   }
//
// }