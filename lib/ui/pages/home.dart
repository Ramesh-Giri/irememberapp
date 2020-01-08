import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [];

  void initState() {
    super.initState();
  }

  Future<List> getItems() async {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Icon(Icons.home),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder(
        future: getItems(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if(!snapshot.hasData) return Center(child: CircularProgressIndicator(),);
          if(snapshot.hasError) return Center(child: Text("There was an error ${snapshot.error}" ),);
          List items = snapshot.data;

          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: items.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add Item",
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.green[200],
    );
  }

  void _delete() {

  }

  Widget _buildItem(){

  }

  void removeItem() {

  }

}
