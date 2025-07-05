import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Class Parent
class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();

}
// State
class _MyHomeState extends State<MyHome> {
 // const MyHome({super.key});
  final img = 'https://media.licdn.com/dms/image/v2/D5603AQEeZIJ_l6WsFQ/profile-displayphoto-shrink_800_800/B56Zcg_ESSGoAc-/0/1748605093428?e=1756339200&v=beta&t=bk2DvychZjNWad3CS14cm7farWXmyJp3POIbYuZSbfg';

  final scaffoldKey  = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
       key: scaffoldKey,
        backgroundColor: _dark ? Colors.blueGrey : Colors.white,
        appBar: _buildAppBar(),
        drawer: _buidlDrawer(),
        //endDrawer: _buildEndDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _hide ? null : _buildFloting(),
        body: _buildBody(),
        bottomNavigationBar: _hide ? null : _buildButtom(),
        extendBody: true,
    );
  }

  //App can't use Widget because it;s PreferredSizeWidget.
  String dragon =  "https://www.hollywoodinsider.com/wp-content/uploads/2022/06/The-Hollywood-Insider-Tribute-How-to-Train-Your-Dragon-Franchise.png";

  Widget _buildSearchTextField(){
    return Container(
      height: 50.0,
      //margin: EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2000.0),
        color: Colors.brown.withOpacity(0.7),
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        textInputAction: TextInputAction.send,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: "Search........",
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(Icons.search, color: Colors.white,),
        ),
      ),
    );
  }

  bool _dark = false;
  bool _hide = false;
  double _size = 0;

  AppBar _buildAppBar(){
    return AppBar(
      backgroundColor: _dark == true ? Colors.black : Colors.orange,
        title: Text('Hello',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            setState(() {
               _size++;
            });
          },
            icon: Icon(Icons.add),
            color: Colors.white,
          ),
          IconButton(onPressed: (){
            setState(() {
              _size--;
            });
          },
            icon: Icon(Icons.remove),
            color: Colors.white,
          ),
          IconButton(onPressed: (){
            setState(() {
              _dark = !_dark;
            });
          },
            icon: Icon(_dark ? Icons.light_mode : Icons.dark_mode),
            color: Colors.white,
          ),
          IconButton(onPressed: (){
            setState(() {
              _hide = !_hide;
            });
          },
            icon: Icon(_hide ? Icons.visibility : Icons.visibility_off),
            color: Colors.white,
          ),
        ],
        // leading:IconButton(onPressed: (){
        //   scaffoldKey.currentState!.openDrawer();
        // },
        //     icon: Icon(CupertinoIcons.home,size: 25.0,color: Colors.white,),),
      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [
      //           Colors.indigo,
      //           Colors.pink,
      //       ],
      //     ),
      //   ),
      // ),
      // flexibleSpace: Container(
      //   child: Image.network(dragon,
      //     fit: BoxFit.cover,
      //     alignment: Alignment.topCenter,
      //   ),
      // ),
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: SizedBox(),
      ),
    );
  }

  Widget _buildMyText(){
    return Text(
      "ប្រទេសកម្ពជា",
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
    return Image.network(img,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      color: Colors.black12,
      colorBlendMode: BlendMode.colorBurn,
    );
  }

  // can use Widget because it's Widget.
  String pattern = "https://t3.ftcdn.net/jpg/02/77/30/98/360_F_277309825_h8RvZkoyBGPDocMtippdfe3497xTrOXO.jpg";

  //under score private
  String _text = "Trump, speaking to reporters aboard Air Force One as he traveled to New Jersey, declined to name the countries involved, saying that would be made public on Monday.";
  Widget _buildFloting(){
    return FloatingActionButton(onPressed: (){
       setState(() {
         _text = "I am okay";
       });
      debugPrint(_text,);
    },
      child: Icon(Icons.qr_code_2_sharp,
        size: 40.0,color: Colors.pinkAccent,
      ),
      shape: CircleBorder(),
    );
  }

  Widget _buildBody(){
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.0),
      child: Text(_text,style: TextStyle(fontSize: 20.0 + _size),),
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: NetworkImage(pattern),
      //     repeat: ImageRepeat.repeat,
      //   ),
      // ),
    //  child: _buildPasswordTextField(),
    );
  }

  Widget _buildEmailTextField(){
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.blue,
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        textInputAction: TextInputAction.send,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: "Enter email address",
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(Icons.email, color: Colors.white,),
          suffixIcon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.send,color: Colors.white,),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField(){
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.blue,
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        textInputAction: TextInputAction.send,
        obscureText: true,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: "Enter password",
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white70),
          suffixIcon: IconButton(onPressed:(){},
               icon: Icon(Icons.visibility,
                 color: Colors.white,
            ),
          ),
          icon: Icon(Icons.key,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildImage(){
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.yellow,
         shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  Widget _buildBoxImage(){
    return Container(
      width: 250,
      height: 250,
      transformAlignment: Alignment.center,
      transform: Matrix4.rotationZ(0.7),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // create child container in Container.
  Widget _buildButtom(){
    return BottomAppBar(
      color: Colors.orange,
      notchMargin: 10,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(onPressed: (){debugPrint("github");},
            icon: Icon(FontAwesomeIcons.github),
          ),
          IconButton(onPressed: (){debugPrint("add");},
            icon: Icon(FontAwesomeIcons.plus),
          ),
          SizedBox(width: 40,),
          IconButton(onPressed: (){debugPrint("database");},
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
    return Drawer
      (
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
          Padding(
            padding: const EdgeInsets.all(8.0),
          //  child: _buildSearchTextField(),
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
