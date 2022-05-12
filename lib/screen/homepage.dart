import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var X = MediaQuery.of(context).size.width;
    var Y = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Container(
        height: Y * 1,
        width: X * 1,
        color: Colors.amber,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.youtube_searched_for),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.access_alarm),
                            ),
                            Text("abc"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.access_alarm),
                            ),
                            Text("abc"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.access_alarm),
                            ),
                            Text("abc"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.access_alarm),
                            ),
                            Text("abc"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "Current Class",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8, left: 8),
                child: Container(
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.black26,
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2021/09/12/07/58/banner-6617553__340.jpg",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment(-1, 0),
                  child: Text("Regular Class"),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 100,
                            color: Colors.black26,
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
