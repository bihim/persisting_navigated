import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Page"),
      ),
      body: ListView.builder(
        itemCount: 500,
        itemBuilder: (context, index) {
          return Card(
            color: index % 2 == 0 ? Colors.cyan.shade900 : null,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    "Title of Blog ${index + 1}",
                    style: TextStyle(
                      color: index % 2 == 0 ? Colors.white : null,
                    ),
                  ),
                  Text(
                    "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.",
                    style: TextStyle(
                      color: index % 2 == 0 ? Colors.white : null,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
