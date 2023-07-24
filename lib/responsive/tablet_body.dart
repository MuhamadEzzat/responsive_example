import 'package:flutter/material.dart';

class MyTabletBody extends StatelessWidget {
  const MyTabletBody({Key? key}) : super(key: key);

  void pressbutton(){
    print('Done');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          'Mobile',
          style: TextStyle(
              color: Colors.black54
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                'list 1',
                              ),
                              ElevatedButton(
                                  onPressed: pressbutton,
                                  child: Text(
                                    'Press',
                                  ))
                            ],
                          ),
                          color: Colors.purple,
                          height: 120,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex:1,
            child: Container(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        height: 200,
                      ),
                    );
                  },
                  ),
              width: 200,
              color: Colors.deepPurple[300],
            ),
          )
        ],
      ),
    );
  }
}
