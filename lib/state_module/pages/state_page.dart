import 'package:flutter/material.dart';
import 'minus_button_widget.dart';
import 'plus_button_widget.dart';
import 'state_detail_page.dart';
import 'text_widget.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

//The detail page no need constructor.
class _StatePageState extends State<StatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
    );
  }
  Widget _buildDrawer(){
    return Drawer(
      child: ListView(
        children: [
             DrawerHeader(
               decoration: BoxDecoration(color: Colors.indigoAccent),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage('assets/images/Profile.jpg'),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Makara',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('makarasam68@gmail.com',
                          style: TextStyle(fontSize: 14,
                            color: Colors.grey[400],
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
              // Using for close.
                Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text("Change To Light Mode"),
            trailing: Icon(Icons.light_mode),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text("Change To Dark Mode"),
            trailing: Icon(Icons.dark_mode),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text("Change To System Mode"),
            trailing: Icon(Icons.brightness_auto),
            onTap: (){

            },
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar(){
    return AppBar(
      //backgroundColor: Colors.blue,
      title: Text("State App"),
      actions: [
        MinusButtonWidget(),
        PlusButtonWidget(),
        IconButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context)=> StateDetailPage(),
              ),
            );
          },
          icon: Icon(Icons.settings,color: Colors.white,),
        ),
      ],
    );
  }

  Widget _buildBody(){
    return TextWidget();
  }
}
