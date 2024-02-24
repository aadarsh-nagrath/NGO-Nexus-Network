import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get collection of events
  final CollectionReference events = FirebaseFirestore.instance.collection('events');

  // CREATE: Add a new event
  Future<void> addEvent({
    required String title,
    required String subtitle,
    required String description,
    required double amountToBeRaised,
    required DateTime eventDate,
  }) async {
    await events.add({
      'title': title,
      'subtitle': subtitle,
      'description': description,
      'amountToBeRaised': amountToBeRaised,
      'eventDate': eventDate,
      'timestamp': Timestamp.now(),
    });
  }

  // READ: Get events from database
  Stream<QuerySnapshot> getEvents() {
    final eventsStream = events.orderBy('timestamp', descending: true).snapshots();
    return eventsStream;
  }

  // UPDATE: update event given a doc id
  Future<void> updateEvent({
    required String docID,
    required String title,
    required String subtitle,
    required String description,
    required double amountToBeRaised,
    required DateTime eventDate,
  }) {
    return events.doc(docID).update({
      'title': title,
      'subtitle': subtitle,
      'description': description,
      'amountToBeRaised': amountToBeRaised,
      'eventDate': eventDate,
      'timestamp': Timestamp.now(),
    });
  }

  // DELETE: delete event given a doc id
  Future<void> deleteEvent(String docID) {
    return events.doc(docID).delete();
  }
}
