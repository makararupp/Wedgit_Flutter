import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/movielist_constant.dart';

class GradViewPage extends StatefulWidget {
  const GradViewPage({super.key});

  @override
  State<GradViewPage> createState() => _GradViewPageState();
}

class _GradViewPageState extends State<GradViewPage> {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
       DeviceOrientation.portraitUp,    // Only portrait up
       DeviceOrientation.portraitDown, // Add if you want upside-down portrait too
      /*DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,*/
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Page",style: TextStyle(color:Colors.white),),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return _buildViewBuilder();
  }
  
  Widget _buildViewBuilder(){
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:3,
           mainAxisSpacing: 5,
           crossAxisSpacing: 5,
           childAspectRatio: 1/2,
        ),
        itemCount: movieListConstant.length,
        itemBuilder: (context, index){
          return Container(
              child: Image.network(
                movieListConstant[index].imageUrl,
                fit: BoxFit.cover,
              ),
          );
        },
    );
  }
  

  Widget _buildViewCount(){
    return GridView.count(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 3, // number of columns.
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      childAspectRatio: 9/16, // x/y.វាប្រៀបបានដូចរូបថត។
      children: [
        Container(width: 60.0,height: 100, color: Colors.purple,),
        Container(width: 150.0,height: 50, color: Colors.blueGrey,),
        Container(width: 150.0,height: 120, color: Colors.blue,),
        Container(width: 150.0,height: 150, color: Colors.yellow,),
        Container(width: 60.0,height: 60, color: Colors.lime,),
        Container(width: 120.0,height: 90, color: Colors.orange,),
        Container(width: 60.0,height: 100, color: Colors.red,),
        Container(width: 150.0,height: 50, color: Colors.blueGrey,),
      ],
    );
  }

  Widget _buildViewExtent(){
    return GridView.extent(
      padding: EdgeInsets.all(15.0),
      physics: BouncingScrollPhysics(),
      maxCrossAxisExtent: 130.0,  // independent pixel
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      childAspectRatio: 9/16, // x/y.វាប្រៀបបានដូចរូបថត។
      children: [
        Container(width: 60.0,height: 100, color: Colors.purple,),
        Container(width: 150.0,height: 50, color: Colors.blueGrey,),
        Container(width: 150.0,height: 120, color: Colors.blue,),
        Container(width: 150.0,height: 150, color: Colors.yellow,),
        Container(width: 60.0,height: 60, color: Colors.lime,),
        Container(width: 120.0,height: 90, color: Colors.orange,),
        Container(width: 60.0,height: 100, color: Colors.red,),
        Container(width: 150.0,height: 50, color: Colors.blueGrey,),
      ],
    );
  }

}
