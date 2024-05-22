import 'package:flutter/material.dart';

class CustomScrollViewScreen extends StatelessWidget {
  const CustomScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('CustomScrollView'),
      //   centerTitle: true,
      //   foregroundColor: Colors.white,
      //   backgroundColor: const Color(0xFFda1e3d),
      // ),
      backgroundColor: const Color(0xFFda1e3d),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFFda1e3d),
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Demo'),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const Card(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          "Labore qui labore sunt et nulla ea enim anim deserunt occaecat. Eu elit laborum deserunt reprehenderit ea nostrud."),
                    ),
                  );
                },
                childCount: 4,
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 100.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const Card(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          "Labore qui labore sunt et nulla ea enim anim deserunt occaecat. Eu elit laborum deserunt reprehenderit ea nostrud."),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
