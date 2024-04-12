import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UploadEventPage extends StatefulWidget {
  const UploadEventPage({Key? key}) : super(key: key);

  @override
  _UploadEventPageState createState() => _UploadEventPageState();
}

class _UploadEventPageState extends State<UploadEventPage> {
  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _aboutEventController = TextEditingController();
  final TextEditingController _registrationLinkController =
      TextEditingController();
  final TextEditingController _contactInfoController = TextEditingController();
  final TextEditingController _posterLinkController = TextEditingController();

  String? _selectedClub;
  final List<String> _clubs = [
    'ACM',
    'CGC'
  ]; // Example club names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  height: 87,
                  width: 536,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Upload Event',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name of the event",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    TextField(
                      controller: _eventNameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "About the event",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    TextField(
                      controller: _aboutEventController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Registration link",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    TextField(
                      controller: _registrationLinkController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "For more info contact",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    TextField(
                      controller: _contactInfoController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Club Name",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    DropdownButton<String>(
                      value: _selectedClub,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 20,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedClub = newValue;
                        });
                      },
                      items: _clubs.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Poster Link",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    TextField(
                      controller: _posterLinkController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async {
                        if (_eventNameController.text.isEmpty ||
                            _aboutEventController.text.isEmpty ||
                            _registrationLinkController.text.isEmpty ||
                            _contactInfoController.text.isEmpty ||
                            _posterLinkController.text.isEmpty ||
                            _selectedClub == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('All fields are required!')),
                          );
                        } else {
                          final event = Event(
                            clubName: _selectedClub ?? '',
                            eventName: _eventNameController.text,
                            aboutEvent: _aboutEventController.text,
                            registrationLink: _registrationLinkController.text,
                            contactInfo: _contactInfoController.text,
                            posterLink: _posterLinkController.text,
                          );

                          await FirebaseFirestore.instance
                              .collection('events')
                              .add(event.toMap());

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content:
                                    Text('Event uploaded successfully!')),
                          );
                        }
                      },
                      child: Text('Upload Event'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Event {
  final String clubName;
  final String eventName;
  final String aboutEvent;
  final String registrationLink;
  final String contactInfo;
  final String posterLink;

  Event({
    required this.clubName,
    required this.eventName,
    required this.aboutEvent,
    required this.registrationLink,
    required this.contactInfo,
    required this.posterLink,
  });

  // Convert a Event into a Map. The keys must correspond to the names of the
  // fields in the Firestore document.
  Map<String, dynamic> toMap() {
    return {
      'clubName': clubName,
      'eventName': eventName,
      'aboutEvent': aboutEvent,
      'registrationLink': registrationLink,
      'contactInfo': contactInfo,
      'posterLink': posterLink,
    };
  }
}
