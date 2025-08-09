import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowColumnPage extends StatefulWidget {
  const RowColumnPage({super.key});

  @override
  State<RowColumnPage> createState() => _RowColumnPageState();
}

class _RowColumnPageState extends State<RowColumnPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
  // AppBar can't create by the widget.
  AppBar _buildAppBar(){
   return AppBar(
     backgroundColor: Colors.black,
      title: _buildTopMenu(),
   );
  }

  Widget _buildTopMenu(){
    return SingleChildScrollView(
     scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Java'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Oracle'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('IMB'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Spring boot'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Developer'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('MobileAPP'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(){
    return Container(
      alignment: Alignment.center,
      color: Colors.grey[300],
      child: _buildExpended(),
    );
  }

  Widget _buildExpended(){
    return Column(
      children: [
        Expanded(
            child: _buildColumnList(),
        ),
        _buildTextBoxBar(),
      ],
    );
  }

  Widget _buildTextBoxBar(){
    return  Container(
      color: Colors.grey[300],
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 30, top: 10),
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.attach_file)),
          Expanded(child: _buildMessageTextField(),),
          IconButton(onPressed: (){}, icon: Icon(Icons.mic)),
        ],
      ),
    );
  }

  Widget _buildMessageTextField(){
    return Container(
      //ដកឃ្លា ១០ចេញពីរឆ្វេង។
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: TextField(
        style: TextStyle(color: Colors.black, fontSize: 18.0),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Message",
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.face)),
        ),
      ),
    );
  }

  Widget _buildColumnList(){
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          _buildIGPost(),
          _buildIGPost2(),
          _buildIGPost3(),
        ],
      ),
    );
  }

  Widget _buildIGPost(){
    String ig = "https://media.licdn.com/dms/image/v2/D5603AQEeZIJ_l6WsFQ/profile-displayphoto-shrink_800_800/B56Zcg_ESSGoAc-/0/1748605093428?e=1755734400&v=beta&t=rCK1ZUDk0u9c6St0EDdU9lT2NVMdARr5AzhXYr5Iupg";
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children:
             [
               IconButton(onPressed: (){},  icon: Icon(Icons.face)),
               Text("sam_makara7777"),
               Spacer(),
               IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),),
             ],

          ),
          Container(
              height: 400.0,
              width: double.maxFinite,
              child: Image.network(ig,
                fit: BoxFit.cover,
              ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.heart)
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.chat_bubble),
              ),
              IconButton(onPressed: (){},
                  icon: Icon(CupertinoIcons.arrow_up_circle),
              ),
              Spacer(),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.bookmark),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildIGPost2(){
    String ig = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA7GhrOqUPfstlE2t4W3ij99FVYWJKY3Td3Q&s";
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children:
            [
              IconButton(onPressed: (){},  icon: Icon(Icons.face)),
              Text("Dragon_movie"),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),),
            ],

          ),
          Container(
            height: 400.0,
            width: double.maxFinite,
            child: Image.network(ig,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(CupertinoIcons.heart)
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.chat_bubble),
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.arrow_up_circle),
              ),
              Spacer(),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.bookmark),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildIGPost3(){
    String ig = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAkKPFaTuL7DhzknMnOvk5s32984nWlPyMvg&s";
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children:
            [
              IconButton(onPressed: (){},  icon: Icon(Icons.face)),
              Text("dev_ops"),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),),
            ],

          ),
          Container(
            height: 400.0,
            width: double.maxFinite,
            child: Image.network(ig,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(CupertinoIcons.heart)
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.chat_bubble),
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.arrow_up_circle),
              ),
              Spacer(),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.bookmark),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildRow(){
   return Container(
     color: Colors.blue.withOpacity(0.5),
       child: Row(
           children: [
             Container(width: 50.0,height: 50.0, color: Colors.red,),
             SizedBox(width: 10.0),
             Container(width: 50.0,height: 50.0, color: Colors.yellow,),
             SizedBox(width: 10.0),
             Container(width: 50.0,height: 50.0, color: Colors.lime,),
             Spacer(), //
             Container(width: 50.0,height: 50.0, color: Colors.orange,),
           ],
       ),
   );
  }

  Widget _buildColumn(){
    return Container(
      color: Colors.teal.withOpacity(0.5),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //  not affect.
          children: [
            Container(width: 150.0,height: 120, color: Colors.blue,),
            SizedBox(height: 20.0),
            Container(width: 150.0,height: 150, color: Colors.yellow,),
            SizedBox(height: 20.0),
            Container(width: 60.0,height: 60, color: Colors.lime,),
            SizedBox(height: 20.0),
            Container(width: 120.0,height: 90, color: Colors.orange,),
            SizedBox(height: 20.0),
            Container(width: 60.0,height: 100, color: Colors.purple,),
            Container(width: 150.0,height: 50, color: Colors.blueGrey,),
            Container(width: 150.0,height: 120, color: Colors.blue,),
            Container(width: 150.0,height: 150, color: Colors.yellow,),
            Container(width: 60.0,height: 60, color: Colors.lime,),
            Container(width: 120.0,height: 90, color: Colors.orange,),
            Container(width: 60.0,height: 100, color: Colors.purple,),
            Container(width: 150.0,height: 50, color: Colors.blueGrey,),
          ],
        ),
      ),
    );
  }
}
