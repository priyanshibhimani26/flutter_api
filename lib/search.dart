import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  final List<Map<String, dynamic>> _allUsers = [

      {
        "createdAt": "2023-02-20T20:05:05.318Z",
        "name": "shahi tukda",
        "image": "https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/9956e-hyderabad-dishes.jpg?fit=1000%2C667&ssl=1",
        "id": "1"
      },
      {
        "createdAt": "2023-02-20T21:06:42.298Z",
        "name": "burgur",
        "image": "assets/images/dish4.jpg",
        "id": "2"
      },
      {
        "createdAt": "2023-02-21T13:11:51.243Z",
        "name": "samosa",
        "image": "assets/images/ss1.jpg",
        "id": "3"
      },
      {
        "createdAt": "2023-02-24T04:52:48.341Z",
        "name": "cheese cake",
        "image": "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
        "id": "7"
      },
      {
        "createdAt": "2023-02-24T05:58:20.023Z",
        "name": "noodels",
        "image": "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
        "id": "8"
      },
      {
        "createdAt": "2023-02-24T08:03:36.759Z",
        "name": "icecream cone",
        "image": "https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
        "id": "9"
      }

  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  elevation: 1,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                      NetworkImage(_foundUsers[index]['image']),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(_foundUsers[index]['name']),
                  ),
                ),
              )
                  : const Text(
                'No results found Please try with diffrent search',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
