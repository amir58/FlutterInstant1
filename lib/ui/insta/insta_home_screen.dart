import 'package:flutter/material.dart';

class InstaHomeScreen extends StatefulWidget {
  const InstaHomeScreen({super.key});

  @override
  State<InstaHomeScreen> createState() => _InstaHomeScreenState();
}

class _InstaHomeScreenState extends State<InstaHomeScreen> {
  String imageUrl =
      "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.messenger_outline_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          storyView(),
          postsView(),
        ],
      ),
    );
  }

  Widget storyView() {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return index == 0
              ? yourStoryWidget()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      const SizedBox(height: 5),
                      const Text("Elon Musk"),
                    ],
                  ),
                );
        },
      ),
    );
  }

  Widget yourStoryWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(imageUrl),
              ),
              const CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
              ),
              const CircleAvatar(
                radius: 9,
                backgroundColor: Colors.blue,
                child: Icon(Icons.add, size: 16,),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Text("Your story"),
        ],
      ),
    );
  }

  Widget postsView() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      const SizedBox(width: 5),
                      const Expanded(
                        child: Text(
                          "elon.musk",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
                Image.network(
                  "https://images.wsj.net/im-856938",
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_bank_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      const SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          text: 'Liked by',
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' amir_mohammed',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' and'),
                            TextSpan(
                                text: ' others',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
