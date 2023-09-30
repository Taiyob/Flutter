import 'package:flutter/material.dart';


void main(){
  runApp(const MaterialApp(home: MySilver(),));
}
class MySilver extends StatefulWidget {
  const MySilver({Key? key}) : super(key: key);

  @override
  State<MySilver> createState() => _MySilverState();
}

class _MySilverState extends State<MySilver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
              topLeft: Radius.circular(95.0),
              bottomLeft: Radius.circular(95.0),
              bottomRight: Radius.circular(200),
            )),
            pinned: true,
            title: Text('Welcome here!!!'),  
            centerTitle: true,
            expandedHeight: 50,
            backgroundColor: Colors.indigoAccent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://instructivetech.com/wp-content/uploads/2022/08/Flutter-For-loop.png",
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
             [
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                trailing: Icon(Icons.phone),
                title: Text('Fixed Nav Bar'),
                subtitle: Text('99859856'),
              ),
            ],
          ),
         ),
        ],
      ),
    );
  }
}
