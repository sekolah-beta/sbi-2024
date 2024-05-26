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
             SliverAppBar(
              pinned: true,
              stretch: true,
              actions: [
                IconButton(icon: const Icon(Icons.share), onPressed: (){},)
              ],
              centerTitle: true,
              expandedHeight: 200.0,
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFFda1e3d),
              flexibleSpace: const FlexibleSpaceBar(
                expandedTitleScale: 1.2,
                centerTitle: true,
                title: Text('CustomScrollView', style: TextStyle(color: Colors.white),),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const Card(
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
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    margin: EdgeInsets.only(bottom: 15, top: 15),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          "Labore qui labore sunt et nulla ea enim anim deserunt occaecat. Eu elit laborum deserunt reprehenderit ea nostrud."),
                    ),
                  )
                ]
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
