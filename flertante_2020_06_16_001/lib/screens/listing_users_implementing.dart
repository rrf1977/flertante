/*
import 'package:flutter/material.dart';
import '../style_and_decorations.dart';
import '../person.dart';

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';


//// List Attempt 1 //////////////////////////{
import 'TelaCadastro.dart';
import 'model/PersonMap.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/principal",
      routes: {
        "/principal": (context) => ListingUsers(),
        "/cadastro": (context) => TelaCadastro(),
      },
    ),
  );
}

class ListingUsers extends StatefulWidget {
  @override
  _ListingUsersState createState() => _ListingUsersState();
}

class _ListingUsersState extends State<ListingUsers> {

  //Conexão Fluter+Firebase
  final db = Firestore.instance;
  final String colecao = "coffees";

  //Lista dinâmica para manipulação dos dados
  List<PersonMap> lista = List();

  //Stream para "ouvir" o Firebase
  StreamSubscription<QuerySnapshot> listen;

  @override
  void initState() {
    super.initState();

    //cancelar o listen, caso a coleção esteja vazia.
    listen?.cancel();

    //retornar dados da coleção e inserir na lista dinâmica
    listen = db.collection(colecao).snapshots().listen((res) {
      setState(() {
        lista = res.documents
            .map((doc) => PersonMap.fromMap(doc.data, doc.documentID))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    listen?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Café Store"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),

      body: StreamBuilder<QuerySnapshot>(

          //fonte de dados
          stream: db.collection(colecao).snapshots(),

          //exibição dos dados
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                List<DocumentSnapshot> docs = snapshot.data.documents;
                return ListView.builder(
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          lista[index].nome,
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(lista[index].preco.toStringAsFixed(2),
                            style: TextStyle(fontSize: 16)),
                        trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {

                             // _deletar(context, docs[index], index);

                            }),

                        onTap: () {
                          Navigator.pushNamed(
                              context, 
                              "/cadastro",
                              arguments: lista[index].id
                          );
                        },

                        
                      );
                    });
            }
          }
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
        elevation: 0,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "/cadastro", arguments: null);
        },
      ),
      backgroundColor: Colors.brown[50],
    );
  }
}
/////////////////////////////////////////////}
*/