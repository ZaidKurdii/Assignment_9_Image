import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

String _imageSlider = "https://picsum.photos/250?image=9";

String _firstImage =
    "https://imageio.forbes.com/blogs-images/forbestechcouncil/files/2019/01/canva-photo-editor-8-7.jpg?format=jpg&width=960";

String _secondImage = "https://avatarfiles.alphacoders.com/118/118280.jpg";

String _thirdImage =
    "https://cdn.pixabay.com/photo/2018/09/01/17/57/programming-3647303_960_720.jpg";

class Home_Image extends StatefulWidget {
  const Home_Image({Key? key}) : super(key: key);

  @override
  State<Home_Image> createState() => _Home_ImageState();
}

class _Home_ImageState extends State<Home_Image> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('Image App')),
        ),
        body: Center(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Image(
                image: NetworkImage(_imageSlider),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _imageSlider = _firstImage;
                    });
                  },
                  child: Image(
                    image: NetworkImage(_firstImage),
                    width: 120,
                    height: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _imageSlider = _secondImage;
                    });
                  },
                  child: Image(
                    image: NetworkImage(_secondImage),
                    width: 120,
                    height: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _imageSlider = _thirdImage;
                    });
                  },
                  child: Image(
                    image: NetworkImage(_thirdImage),
                    width: 120,
                    height: 100,
                  ),
                )
              ],
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: RaisedButton(
                  color: Color.fromARGB(255, 0, 0, 0), // background
                  textColor: Colors.white, // foregro
                  onPressed: () {
                    setState(() {
                      _imageSlider = "https://picsum.photos/250?image=9";
                    });
                  },
                  child: Text('Reset'),
                ),
              ),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
        ]),
      ),
    );
  }
}
