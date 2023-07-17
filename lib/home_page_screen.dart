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
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Argentina Profile",style: TextStyle(
          fontSize: 25,
        ),),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.landscape) {
            return SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(img1), fit: BoxFit.cover)),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          const Text("Argentina",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(text1, style: const TextStyle(fontSize:14),),
                          const SizedBox(height: 10 ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              Image.network(img2, height: 120, width: 133, fit: BoxFit.cover,),
                              Image.network(img2, height: 120, width: 133, fit: BoxFit.cover,),
                              Image.network(img2, height: 120, width: 133, fit: BoxFit.cover,),
                              Image.network(img2, height: 120, width: 133, fit: BoxFit.cover,),
                              Image.network(img2, height: 120, width: 133, fit: BoxFit.cover,),
                              Image.network(img2, height: 120, width: 133, fit: BoxFit.cover,),
                            ],
                          )

                          // GridView.builder(
                          //   shrinkWrap: true,
                          //   physics: const NeverScrollableScrollPhysics(),
                          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          //     crossAxisCount: 3,
                          //     crossAxisSpacing: 8.0,
                          //     mainAxisSpacing: 8.0,
                          //   ),
                          //   itemCount: 6,
                          //   itemBuilder: (context, index) {
                          //     return Image.network(
                          //       img2,
                          //     );
                          //   },
                          // ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: size.height / 2.2,
                    width: size.width,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(img1,scale: 1), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  const Text("Argentina",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: size.height / 70,),
                  Text(text1, style: const TextStyle(fontSize:13),),
                  SizedBox(height: size.height / 70,),
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
            ),
          );
        },
      ),
    );
  }
}
