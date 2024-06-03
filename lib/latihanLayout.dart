import 'package:flutter/material.dart';

import 'DetailScreen.dart';
import 'package:dicoding_flutter/tourism_place.dart';

class LatihanLayout extends StatelessWidget {
  const LatihanLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wisata Bandung"),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            final TourismPlace place = tourismPlaceList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(
                      place: place,
                    );
                  },
                ));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(flex: 1, child: Image.network(place.imageUrls[0])),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              place.name,
                              style: TextStyle(fontSize: 16.0),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(place.location)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
          itemCount: tourismPlaceList.length,
        ));
  }
}
