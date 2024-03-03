import 'package:flutter/material.dart';
import 'package:flutter_insta/utils/global.dart';

import '../widgets/post.dart';
import '../widgets/story.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/instalogo.png'),
                  height: 50,
                ),
                Expanded(flex: 1, child: SizedBox()),
                Icon(Icons.favorite_outline, color: Colors.black, size: 26),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.message_outlined, color: Colors.black, size: 26),
              ],
            )),
      ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: const Row(children: [
                      Story(
                          img:
                          "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                          username: "Aditya"),
                      Story(
                          img:
                          "https://plus.unsplash.com/premium_photo-1664015982598-283bcdc9cae8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWVufGVufDB8fDB8fHww",
                          username: "Rahul"),
                      Story(
                          img:
                          "https://images.unsplash.com/photo-1631947430066-48c30d57b943?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHx8MA%3D%3D",
                          username: "Apple"),
                      Story(
                          img:
                          "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHxlbnwwfHwwfHx8MA%3D%3D",
                          username: "Anshumaan"),
                    ]),
                  ),
                ),
                const Divider(
                  thickness: 0.2,
                  color: secondaryColor,
                ),
                const Post(
                  username: "Rahul_Choudhary",
                  userurl:
                  "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                  date: '04/02/2024',
                  desc: "Very Good Expierence in switzerland and see the view",
                  likes: 520,
                  posturl: "https://images.unsplash.com/photo-1530878902700-5ad4f9e4c318?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  title: "Switzerland",
                ),
                const Post(
                    date: "01/02/2024",
                    desc: "Enjoying Japan!",
                    likes: 882,
                    posturl: "https://images.unsplash.com/photo-1545569341-9eb8b30979d9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    title: "Japan",
                    username: "Apple",
                    userurl:
                    "https://images.unsplash.com/photo-1508341591423-4347099e1f19?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              ],
            ))

    );
  }
}



