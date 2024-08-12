import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> imageGrid = [
    'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
    'https://media.gcflearnfree.org/ctassets/topics/246/share_flower_fullsize.jpg',
    'https://st2.depositphotos.com/2001755/8564/i/450/depositphotos_85647140-stock-photo-beautiful-landscape-with-birds.jpg',
    'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg',
    'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fakebork",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue[500],
        actions: [
          IconButton(
            onPressed: () {
              // Add search functionality here
            },
            icon: const Icon(Icons.search, size: 35.0,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: GridView.count(
                childAspectRatio: 15 / 11,
                scrollDirection: Axis.horizontal,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                crossAxisCount: 1,
                children: List.generate(
                  imageGrid.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(imageGrid[index]),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          left: 5,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 2),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 5,
                          left: 10,
                          child: Text(
                            "Meas Rin",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 2,
              margin: const EdgeInsets.all(5.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: NetworkImage(
                            'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp'),
                      ),
                      title: const Text(
                        "Boapoao",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("1 day ago"),
                      trailing: IconButton(
                        onPressed: () {
                          // Add more functionality here
                        },
                        icon: const Icon(Icons.more_vert, size: 25.0),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 2,
              margin: const EdgeInsets.all(5.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: NetworkImage(
                          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg',
                        ),
                      ),
                      title: const Text(
                        "Ah Jm",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        "Just now",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          
                        },
                        icon: const Icon(Icons.more_vert, size: 25.0),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://media.gcflearnfree.org/ctassets/topics/246/share_flower_fullsize.jpg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
