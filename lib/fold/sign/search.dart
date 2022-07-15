import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchInput();
}

class _SearchInput extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text('Vehicle Tracker'),
              alignment: Alignment.center,
            )
          ],
        ),
        elevation: 15.0,
        leading: Image.asset('images/just.png'),
      ),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Text ("Search for Vehicles", style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,

          ),),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        width: 18,
                      )
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );

  }
}

