import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Badge(child: Icon(Icons.shopping_bag_outlined)),
              ),
              SizedBox(width: 10,),
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: '1', child: Text('New Group')),
                        PopupMenuItem(value: '2', child: Text('Setting')),
                        PopupMenuItem(value: '3', child: Text('Logout')),
                      ]),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Text('1'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Oli Ullah'),
                      subtitle: Text('Where is my passport'),
                      trailing: Text('6:30 PM'),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    if(index ==0){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New Updates'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 5,
                                    )
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                ),
                              ),
                              title: Text('Oli Ullah'),
                              subtitle: Text('35m ago'),
                            ),
                          ],
                        ),
                      );
                    }else{
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 5,
                              )
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                        title: Text('Oli Ullah'),
                        subtitle: Text('35m ago'),
                      );
                    }
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Oli Ullah'),
                      subtitle: Text(index / 2 == 0
                          ? 'You missed audio calls'
                          : 'You have missed video calls'),
                      trailing:
                          Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  }),
            ],
          ),
        ));
  }
}
