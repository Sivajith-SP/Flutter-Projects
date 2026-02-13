import 'package:flutter/material.dart';

class SpotifyText extends StatefulWidget {
  final String text;
  final String subtext;

  const SpotifyText({super.key,required this.text,required this.subtext});

  @override
  State<SpotifyText> createState() => _SpotifyTextState();
}

class _SpotifyTextState extends State<SpotifyText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          widget.text,
        ),
        Text(
          widget.subtext,
          style: TextStyle(fontSize: 14,),
        ),
      ],
    );
  }
}


class SpotifyPlaylist extends StatelessWidget {
  const SpotifyPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title=["Their War is Here","Beautiful Lie","Final Battle","Doomsday","Their War is Here","Beautiful Lie","Final Battle","Doomsday"];
    return Scaffold(
      body: Column(
        children: [
          //Album art,Album,Artist
          Stack(
            children: [
              Container(
                padding: .only(left: 20),
                height: 450,
                width: 500,
                // color: Colors.grey,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    //img
                    Container(
                      margin: .only(top: 70,left: 70),
                      width: 250,
                      height: 250,
                      color: Colors.white,
                      child: Image(image: AssetImage("images/spotifycover.jpg")),
                    ),
                    SizedBox(height: 20,),
                    //Text-Album
                    Text("Batman v Superman (OST)",
                      style: TextStyle(
                      fontSize: 30,
                      fontWeight: .bold
                    ),
                    ),
                    SizedBox(height: 5,),
                    //Artist
                    Text("Hans Zimmer.Junkie XL",
                      style: TextStyle(
                      fontSize: 18,
                        fontWeight: .w600
                    ),
                    ),
                    //info
                    SizedBox(height: 5,),
                    Text("Album . 18 mar 2016",
                      style: TextStyle(
                      fontSize: 14,
                        fontWeight: .w600
                    ),
                    ),
                  ],
                ),
              ),
              //back button
              Positioned(
                  top: 60,
                  left: 20,
                  child: Icon(Icons.arrow_back_outlined,size: 30,),
              ),
            ],

          ),
          //icons
          Row(
            mainAxisAlignment: .center,
            children: [
              SizedBox(width: 15,),
              Icon(Icons.download_for_offline_outlined,size: 30),
              SizedBox(width: 20,),
              Icon(Icons.add_circle_outline,size: 30),
              SizedBox(width: 25,),
              Icon(Icons.more_vert_outlined,size: 30),
              SizedBox(width: 150,),
              Icon(Icons.shuffle,size: 30,color: Colors.green,),
              SizedBox(width: 10,),
              Icon(Icons.play_circle_fill_outlined,size: 50,color: Colors.green,),
            ],
          ),
          //listview.seperated/ListTiles
          Container(
            padding: .only(left: 10),
            height: 450,
            child: ListView.separated(
              padding: .only(top: 10,bottom: 10),
              itemCount: title.length,
              scrollDirection: .vertical,
              itemBuilder: (context,index){
                  return ListTile(
                    title: SpotifyText(text: title[index], subtext: "Hans Zimmer, Junkie XL"),
                    trailing: Icon(Icons.more_vert_outlined),
                  );
              },
              separatorBuilder: (context,index) =>
                  Container(

                  ),
            ),
          ),
        ],
      ),
    );
  }
}
