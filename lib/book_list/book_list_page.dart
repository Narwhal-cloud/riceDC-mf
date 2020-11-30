import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BookList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('riceDC-mf'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('books').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
              return ListView(
                children:
                snapshot.data.documents.map((DocumentSnapshot document){
                  return new ListTile(
                    title: new Text(document['title']),
                  );
                }).toList(),
                );
          }
      ),
    );
  }
}