import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentesProvinciasRecord extends FirestoreRecord {
  AgentesProvinciasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "NombreProvincia" field.
  String? _nombreProvincia;
  String get nombreProvincia => _nombreProvincia ?? '';
  bool hasNombreProvincia() => _nombreProvincia != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['Id']);
    _nombreProvincia = snapshotData['NombreProvincia'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agentesProvincias');

  static Stream<AgentesProvinciasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgentesProvinciasRecord.fromSnapshot(s));

  static Future<AgentesProvinciasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AgentesProvinciasRecord.fromSnapshot(s));

  static AgentesProvinciasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgentesProvinciasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgentesProvinciasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgentesProvinciasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgentesProvinciasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgentesProvinciasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgentesProvinciasRecordData({
  int? id,
  String? nombreProvincia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'NombreProvincia': nombreProvincia,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgentesProvinciasRecordDocumentEquality
    implements Equality<AgentesProvinciasRecord> {
  const AgentesProvinciasRecordDocumentEquality();

  @override
  bool equals(AgentesProvinciasRecord? e1, AgentesProvinciasRecord? e2) {
    return e1?.id == e2?.id && e1?.nombreProvincia == e2?.nombreProvincia;
  }

  @override
  int hash(AgentesProvinciasRecord? e) =>
      const ListEquality().hash([e?.id, e?.nombreProvincia]);

  @override
  bool isValidKey(Object? o) => o is AgentesProvinciasRecord;
}
