import 'package:flutter/material.dart';

import '../constants/movielist_constant.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView Page",style: TextStyle(color:Colors.white),),
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody(){
    return _buildPageView();
  }
  Widget _buildPageView(){
    return PageView(
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

}
