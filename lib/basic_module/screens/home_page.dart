import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatelessWidget {
 // const MyHome({super.key});

  final img = 'https://media.licdn.com/dms/image/v2/D5603AQEeZIJ_l6WsFQ/profile-displayphoto-shrink_800_800/B56Zcg_ESSGoAc-/0/1748605093428?e=1756339200&v=beta&t=bk2DvychZjNWad3CS14cm7farWXmyJp3POIbYuZSbfg';
  final scaffoldKey  = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
       key: scaffoldKey,
        appBar: _buildAppBar(),
        drawer: _buidlDrawer(),
        endDrawer: _buildEndDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _buildFloting(),
        body: _buildBody(),
        bottomNavigationBar: _buildButtom(),
    );
  }
  //App can't use Widget because it;s PreferredSizeWidget.
  AppBar _buildAppBar(){
    return AppBar(
        title: Text('Hello Flutter'),
        actions: [
          IconButton(onPressed: (){},
            icon: Icon(FontAwesomeIcons.share),
            color: Colors.white,
          ),
          IconButton(onPressed: (){},
            icon: Icon(FontAwesomeIcons.facebookMessenger),
            color: Colors.white,
          ),
        ],
        leading:IconButton(onPressed: (){
          scaffoldKey.currentState!.openDrawer();
        },
            icon: Icon(CupertinoIcons.home))
    );
  }

  Widget _buildMyText(){
    return Text(
      "ប្រទេសកម្ពជា គឺជាប្រទេសដែលសម្បូរសម្បត្តិធម្មជាតិជាច្រើនដូចជាប្រាសាទនាៗ កម្រងធម្មជាតិសម្រាប់មនុស្សទៅកម្សាន្ត"
          "នគរថ្មរនិងប្រាង្គប្រាសាទជាច្រើន សម្រាប់កូនខ្មែរគ្រប់រូបត្រូវចង់ចាំនាពេលអនាគតនិងថែរក្សាសម្រាប់ចៅៗជំនាន់ក្រោយ"
          "យកមកផ្សព្វផ្សាយជាមួយភ្ងៀវបរទេសនាៗអោយបានទស្សនាប្រាសាទយើងនៃប្រទេសកម្ពុជា។",
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.black,
        fontFamily: "Kdam_Thmor_Pro",
        // fontWeight: FontWeight.bold,
        // fontStyle: FontStyle.italic,
        // decoration: TextDecoration.underline
      ),
      //ប្រើសម្រាប់់បន្ទាត់ចុចៗ៣ដង...។
      // maxLines: ប្រើសម្រាប់lineអក្សរ៣។
      // overflow: TextOverflow.ellipsis,
      // maxLines: 3,
    );
  }
  Widget _buildImg(){
    return Image.network(img);
  }

  // can use Widget because it's Widget.
  Widget _buildBody(){
    return Container(
      alignment: Alignment.center,
      child: _buildImg(),
    );
  }
  // can use Widget because it's Widget.
  Widget _buildFloting(){
    return FloatingActionButton(onPressed: (){},
      child: Icon(Icons.qr_code_2_sharp),
    );
  }
  // can use Widget because it's Widget.
  Widget _buildButtom(){
    return BottomAppBar(
      notchMargin: 10,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(onPressed: (){},
            icon: Icon(FontAwesomeIcons.github),
          ),
          IconButton(onPressed: (){},
            icon: Icon(FontAwesomeIcons.plus),
          ),
          SizedBox(width: 40,),
          IconButton(onPressed: (){},
            icon: Icon(FontAwesomeIcons.database),
          ),
          IconButton(onPressed: (){debugPrint("more");},
              icon: Icon(FontAwesomeIcons.firefox)
          ),
        ],
      ),
    );
  }

  Widget _buidlDrawer(){
    return Drawer(
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
    );
  }

  Widget _buildEndDrawer(){
    return  Drawer(
      backgroundColor: Colors.white,
      child: Image.network(img,
        fit: BoxFit.cover,
      ),

    );
  }

}
