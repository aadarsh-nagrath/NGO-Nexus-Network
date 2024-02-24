import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vyasa/src/features/core/screens/events/event_firestore.dart';
import 'package:vyasa/src/features/core/screens/events/event_widget.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController eventDateController = TextEditingController();

  void openEventBox(BuildContext context, {String? docID, Map<String, dynamic>? eventData}) {
    titleController.text = eventData?['title'] ?? '';
    subtitleController.text = eventData?['subtitle'] ?? '';
    descriptionController.text = eventData?['description'] ?? '';
    amountController.text = eventData != null && eventData['amountToBeRaised'] != null ? eventData['amountToBeRaised'].toString() : '';
    eventDateController.text = eventData?['eventDate'] != null ? DateFormat('yyyy-MM-dd').format(eventData?['eventDate'].toDate()) : '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(docID != null ? 'Update Event' : 'Add Event'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: subtitleController,
              decoration: const InputDecoration(labelText: 'Subtitle'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: amountController,
              decoration: const InputDecoration(labelText: 'Amount to be Raised'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: eventDateController,
              decoration: InputDecoration(
                labelText: 'Event Date',
                suffixIcon: IconButton(
                  onPressed: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(DateTime.now().year + 5),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        eventDateController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                      });
                    }
                  },
                  icon: const Icon(Icons.calendar_today),
                ),
              ),
              readOnly: true,
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              if (docID != null) {
                updateEvent(docID);
              } else {
                addEvent();
              }
              Navigator.pop(context);
            },
            child: Text(docID != null ? "Update" : "Add"),
          ),
        ],
      ),
    );
  }

  void addEvent() {
    firestoreService.addEvent(
      title: titleController.text,
      subtitle: subtitleController.text,
      description: descriptionController.text,
      amountToBeRaised: double.tryParse(amountController.text) ?? 0.0,
      eventDate: DateTime.tryParse(eventDateController.text) ?? DateTime.now(),
    );
    clearControllers();
  }

  void updateEvent(String docID) {
    firestoreService.updateEvent(
      docID: docID,
      title: titleController.text,
      subtitle: subtitleController.text,
      description: descriptionController.text,
      amountToBeRaised: double.tryParse(amountController.text) ?? 0.0,
      eventDate: DateTime.tryParse(eventDateController.text) ?? DateTime.now(),
    );
  }

  void clearControllers() {
    titleController.clear();
    subtitleController.clear();
    descriptionController.clear();
    amountController.clear();
    eventDateController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Events"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openEventBox(context);
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getEvents(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<DocumentSnapshot> eventsList = snapshot.data!.docs.cast<DocumentSnapshot>();
            return ListView.builder(
              itemCount: eventsList.length,
              itemBuilder: (context, index) {
                DocumentSnapshot<Object?> eventData = eventsList[index];
                return EventCardWidget(
                  title: eventData['title'],
                  subtitle: eventData['subtitle'],
                  eventDate: eventData['eventDate'],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    titleController.dispose();
    subtitleController.dispose();
    descriptionController.dispose();
    amountController.dispose();
    eventDateController.dispose();
    super.dispose();
  }
}

