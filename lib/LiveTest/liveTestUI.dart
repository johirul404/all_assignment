import 'package:flutter/material.dart';
class LiveTestUi extends StatefulWidget {
  const LiveTestUi({super.key});

  @override
  State<LiveTestUi> createState() => _LiveTestUiState();
}

class _LiveTestUiState extends State<LiveTestUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )
                      ),
                        onPressed: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Add',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      title: Text('Jawad',style: TextStyle(color: Colors.red),),
                      subtitle: Text('01302032013',style: TextStyle(color: Colors.black38),),
                      leading: Icon(Icons.person,size: 45,color: Colors.black38,),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Ferdous',style: TextStyle(color: Colors.red),),
                      subtitle: Text('01302032013',style: TextStyle(color: Colors.black38),),
                      leading: Icon(Icons.person,size: 45,color: Colors.black38,),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hasan',style: TextStyle(color: Colors.red),),
                      subtitle: Text('01302032013',style: TextStyle(color: Colors.black38),),
                      leading: Icon(Icons.person,size: 45,color: Colors.black38,),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hasan',style: TextStyle(color: Colors.red),),
                      subtitle: Text('01302032013',style: TextStyle(color: Colors.black38),),
                      leading: Icon(Icons.person,size: 45,color: Colors.black38,),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hasan',style: TextStyle(color: Colors.red),),
                      subtitle: Text('01302032013',style: TextStyle(color: Colors.black38),),
                      leading: Icon(Icons.person,size: 45,color: Colors.black38,),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hasan',style: TextStyle(color: Colors.red),),
                      subtitle: Text('01302032013',style: TextStyle(color: Colors.black38),),
                      leading: Icon(Icons.person,size: 45,color: Colors.black38,),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
