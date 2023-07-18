import 'package:flutter/material.dart';
import 'package:responsive_design/image_url.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {


      bool isPortrait = MediaQuery.orientationOf(context) == Orientation.portrait;
      Size size = MediaQuery.sizeOf(context);


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Argentina Profile",style: TextStyle(
          fontSize: 25,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flex(
          direction: isPortrait? Axis.vertical:Axis.horizontal,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(img1,), fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              flex: 4,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: size.height / 60,),
                      const Text("Argentina",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: size.height / 60,),
                      Text(text1, style: const TextStyle(fontSize:15),),
                      SizedBox(height: size.height / 60,),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: [
                          Image.network(img2, height: 120, width: 120, fit: BoxFit.cover,),
                          Image.network(img2, height: 120, width: 120, fit: BoxFit.cover,),
                          Image.network(img2, height: 120, width: 120, fit: BoxFit.cover,),
                          Image.network(img2, height: 120, width: 120, fit: BoxFit.cover,),
                          Image.network(img2, height: 120, width: 120, fit: BoxFit.cover,),
                          Image.network(img2, height: 120, width: 120, fit: BoxFit.cover,),
                        ],
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
