import 'package:flutter/material.dart';
import 'package:projects/children_module/models/movie_model.dart';

class DetailPage extends StatefulWidget {
 //const DetailPage({super.key});
 // create constructor to sending data within Navigator.
  // Syntax :  ${widget.item.title}
 Movie item;
 DetailPage(this.item);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Detail Page'),
      ),
      body: _buildBoy(),
    );
  }

  Widget _buildBoy(){
    return ListView(
      physics: BouncingScrollPhysics(),
        children: [
          Image.network(widget.item.imageUrl, fit: BoxFit.cover,),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Text('${widget.item.title}',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
          ),
          Container(
            alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Text("${widget.item.des}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
          ),
        ],
    );
  }
}
