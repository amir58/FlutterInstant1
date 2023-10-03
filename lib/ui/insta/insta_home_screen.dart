import 'package:flutter/material.dart';
import 'package:instant1/ui/insta/models/post.dart';
import 'package:instant1/ui/insta/models/story_model.dart';
import 'package:instant1/ui/insta/story_view_screen.dart';

class InstaHomeScreen extends StatefulWidget {
  const InstaHomeScreen({super.key});

  @override
  State<InstaHomeScreen> createState() => _InstaHomeScreenState();
}

class _InstaHomeScreenState extends State<InstaHomeScreen> {
  String imageUrl =
      "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg";

  List<StoryModel> stories = [
    StoryModel(
      1,
      "Elon Musk",
      "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg",
      "dateTime",
      true,
    ),
    StoryModel(
      2,
      "Steve Jobs",
      "https://149366094.v2.pressablecdn.com/wp-content/uploads/2015/10/steve-jobs1.jpg",
      "dateTime",
      false,
    )
  ];

  List<Post> posts = [
    Post(
      id: 1,
      dateTime: "dateTime",
      username: "Steve Jobs",
      userImageUrl:
          "https://149366094.v2.pressablecdn.com/wp-content/uploads/2015/10/steve-jobs1.jpg",
      postImageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg",
      likedBy: 'amir_mohammed',
    ),
    Post(
      id: 2,
      dateTime: "dateTime",
      username: "Elon Musk",
      userImageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1229892983-square.jpg",
      postImageUrl: "https://images.wsj.net/im-856938",
      likedBy: 'mark',
    ),
  ];

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
        itemCount: stories.length + 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return index == 0
              ? yourStoryWidget()
              : InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StoryViewScreen(),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Visibility(
                              visible: !stories[index - 1].shown,
                              child: CircleAvatar(
                                radius: 27,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFf9ce34),
                                        Color(0xFFee2a7b),
                                        Color(0xFFee2a7b),
                                        Color(0xFF6228d7),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: !stories[index - 1].shown ? 24 : 27,
                              backgroundImage:
                                  NetworkImage(stories[index - 1].userImageUrl),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(stories[index - 1].username),
                      ],
                    ),
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
                radius: 27,
                backgroundImage: NetworkImage(imageUrl),
              ),
              const CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
              ),
              const CircleAvatar(
                radius: 9,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.add,
                  size: 16,
                ),
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
        itemCount: posts.length,
        itemBuilder: (context, index) {
          Post post = posts[index];
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(post.userImageUrl),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          post.username,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
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
                  post.postImageUrl,
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
                          children: <TextSpan>[
                            TextSpan(
                                text: ' ${post.likedBy}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const TextSpan(text: ' and'),
                            const TextSpan(
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
