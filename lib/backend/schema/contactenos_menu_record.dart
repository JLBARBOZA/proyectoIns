import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactenosMenuRecord extends FirestoreRecord {
  ContactenosMenuRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreCategoria" field.
  String? _nombreCategoria;
  String get nombreCategoria => _nombreCategoria ?? '';
  bool hasNombreCategoria() => _nombreCategoria != null;

  void _initializeFields() {
    _nombreCategoria = snapshotData['nombreCategoria'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contactenosMenu');

  static Stream<ContactenosMenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactenosMenuRecord.fromSnapshot(s));

  static Future<ContactenosMenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactenosMenuRecord.fromSnapshot(s));

  static ContactenosMenuRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactenosMenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactenosMenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactenosMenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactenosMenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactenosMenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactenosMenuRecordData({
  String? nombreCategoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCategoria': nombreCategoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactenosMenuRecordDocumentEquality
    implements Equality<ContactenosMenuRecord> {
  const ContactenosMenuRecordDocumentEquality();

  @override
  bool equals(ContactenosMenuRecord? e1, ContactenosMenuRecord? e2) {
    return e1?.nombreCategoria == e2?.nombreCategoria;
  }

  @override
  int hash(ContactenosMenuRecord? e) =>
      const ListEquality().hash([e?.nombreCategoria]);

  @override
  bool isValidKey(Object? o) => o is ContactenosMenuRecord;
}
