import 'package:flutter/material.dart';

class ImageBrowse extends StatefulWidget {
  const ImageBrowse({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ImageBrowse> createState() => _ImageBrowseState();
}

class _ImageBrowseState extends State<ImageBrowse> {
  var images=['assets/image/1.jpg','assets/image/2.jpg','assets/image/3.jpg','assets/image/4.jpg'];
  int imageindex=1;
  String defult_image="assets/image/5.jpg";

  void previous (){
    if(imageindex<=0){imageindex=4;}
    defult_image = images[imageindex-1];
    imageindex--;
  }

  void next (){
    if(imageindex>=3){imageindex=-1;}
    defult_image = images[imageindex+1];
    imageindex++;
  }

  void main() {
    var appTitle = Text('Images');

    var appBody = Center(
      child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset(defult_image),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        previous();
                      });
                    },
                    child: const Text("上一頁", textScaleFactor:1,)
                ),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        next();
                      });
                    },
                    child: const Text("下一頁", textScaleFactor:1,)
                ),
              ],
            ),
          ]
      ),
    );

    var appBar = AppBar(
      title: appTitle,
    );

    var app = MaterialApp(
        home: Scaffold(
          appBar: appBar,
          body: appBody,
        )
    );

    runApp(app);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

 
