import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  final img = 'https://media.licdn.com/dms/image/v2/D5603AQEeZIJ_l6WsFQ/profile-displayphoto-shrink_800_800/B56Zcg_ESSGoAc-/0/1748605093428?e=1756339200&v=beta&t=bk2DvychZjNWad3CS14cm7farWXmyJp3POIbYuZSbfg';

  @override
  Widget build(BuildContext context) {

    final scaffoldKey  = GlobalKey<ScaffoldState>();

    return Scaffold(
       key: scaffoldKey,
        appBar: AppBar(
          title: Text('Hello Flutter'),
         leading:IconButton(onPressed: (){
           scaffoldKey.currentState!.openDrawer();
         },
             icon: Icon(CupertinoIcons.home))
        ),
        drawer: Drawer(
          child: ListView(
            padding:const EdgeInsets.all(0),
            children:<Widget> [
              DrawerHeader(
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(img),
                            fit : BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text('Hello, Makara!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Profile'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.workspace_premium),
                title: Text('Go Premium'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('My Balance'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.analytics),
                title: Text('Analytics'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.gif_box),
                title: Text('Gift Zone'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.local_activity),
                title: Text('Location'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.currency_exchange),
                title: Text('Exchange Rate'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.check_outlined),
                title: Text('CheckOut'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const SizedBox(height: 25,),
              ListTile(
                title: Center(
                  child: Text(
                    'Edit Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          backgroundColor: Colors.white,
          child: Image.network(img,
            fit: BoxFit.cover,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){},
          child: Icon(Icons.qr_code_2_sharp),
        ),
        body: Center(
            child: Image.network(img)
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(onPressed: (){},
                icon: Icon(Icons.home),
              ),
              IconButton(onPressed: (){},
                icon: Icon(Icons.add),
              ),
              SizedBox(width: 40,),
              IconButton(onPressed: (){},
                icon: Icon(Icons.person),
              ),
              IconButton(onPressed: (){debugPrint("more");},
                  icon: Icon(Icons.more_horiz)
              ),
            ],
          ),
        ),
    );

  }
}
