import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contacts_app/widgets/contact_list.dart';
import 'package:contacts_app/models/person.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController controller = TextEditingController(text: "test");
  final List<Person> persons = [
    Person(id: 'p1', firstName: 'Izzatee',lastName: 'Safia', image: 'imagepath...', email: 'name@mail.com'),
    Person(id: 'p2', firstName: 'Hilmee',lastName: 'Izanee', image: 'imagepath...', email: 'name@mail.com'),
    Person(id: 'p3', firstName: 'Hani',lastName: 'Sakeenah', image: 'imagepath...', email: 'name@mail.com'),
    Person(id: 'p4', firstName: 'Inayatul',lastName: 'Husna', image: 'imagepath...', email: 'name@mail.com'),
  ]; // a list of persons recorde,d in the contact list

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My Contacts')),
      body: Column(
        children: <Widget>[
          //row 1
          Container(
            padding: EdgeInsets.all(32.0),
            child: CupertinoSearchTextField(
              controller: controller,
              onChanged: (value) {},
              onSubmitted: (value) {},
              autocorrect: true,
            ),
          ),
          // row 2
          Column(
            children: persons.map((p) {
              return Card(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipOval(
                        child: Image.asset("assets/images/catimage.png"),
                    ))),
                    Column(
                      children: <Widget>[
                        Container(child: Text(p.firstName + ' ' + p.lastName),),
                        Container(child: Text(p.email),)
                      ],
                    ),
                    const Icon(
                      Icons.message,
                      color: Colors.blue,
                    ),
                  ],
                )
              );
            }).toList()
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            child: FloatingActionButton(
              onPressed: () {  },
              child: Icon(Icons.add)
            ),
          ),
        ],
      ),
    ));
  }
}

/*
*
* */
