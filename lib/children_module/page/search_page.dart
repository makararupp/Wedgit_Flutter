import 'package:flutter/material.dart';
import 'package:projects/children_module/constants/movielist_constant.dart';
import 'package:projects/children_module/models/movie_model.dart';

import 'detail_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: InkWell(
        //use for click on screen drop down keyboard.
        onTap: (){
           FocusScope.of(context).requestFocus(FocusNode());
        },
        child: _buildBody(),
      ),
    );
  }
  AppBar _buildAppBar(){
    return AppBar(
      title: _buildMessageTextField(),
    );
  }

  Widget _buildMessageTextField(){
    return Container(
      height: 50,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(2000.0),
      ),
      child: TextField(
       keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        style: TextStyle(color: Colors.white),
        autocorrect: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search.....",
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(Icons.search, color: Colors.white70,),
        ),
        //use for searching data list by text search...
        onSubmitted: (text){
         if(text.isEmpty || text == " "){
           setState(() {
             _searchMovieList = [];
           });
         }
         else{
           setState(() {
             _searchMovieList = movieListConstant
                 .where(
                   (element)=> element.title.toLowerCase()
                       .contains(text.toLowerCase()),
             ).toList();
           });
         }
         _searchMovieList.forEach((element)=> debugPrint(element.title));
        },
      ),
    );
  }

  List<Movie> _searchMovieList = [];
  
  Widget _buildBody(){
    return ListView.builder(
      itemCount: _searchMovieList.length,
        itemBuilder: (context, index){
          return _buildItem(_searchMovieList[index]);
        }
    );
  }
  Widget _buildItem(Movie item){
    return Card(
          child: ListTile(
            leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.network(item.imageUrl,fit: BoxFit.cover,),
            ),
            title: Text('${item.title}'),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> DetailPage(item),
                  fullscreenDialog: true,
                  // We can to do with pup up the message.
                ),
              );
            },
          ),
     );
  }

}
