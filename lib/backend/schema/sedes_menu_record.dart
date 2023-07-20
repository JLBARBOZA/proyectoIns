import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SedesMenuRecord extends FirestoreRecord {
  SedesMenuRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcionhorario" field.
  String? _descripcionhorario;
  String get descripcionhorario => _descripcionhorario ?? '';
  bool hasDescripcionhorario() => _descripcionhorario != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcionhorario = snapshotData['descripcionhorario'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sedes_menu');

  static Stream<SedesMenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SedesMenuRecord.fromSnapshot(s));

  static Future<SedesMenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SedesMenuRecord.fromSnapshot(s));

  static SedesMenuRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SedesMenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SedesMenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SedesMenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SedesMenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SedesMenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSedesMenuRecordData({
  String? nombre,
  String? descripcionhorario,
  String? descripcion,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcionhorario': descripcionhorario,
      'descripcion': descripcion,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class SedesMenuRecordDocumentEquality implements Equality<SedesMenuRecord> {
  const SedesMenuRecordDocumentEquality();

  @override
  bool equals(SedesMenuRecord? e1, SedesMenuRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcionhorario == e2?.descripcionhorario &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(SedesMenuRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.descripcionhorario, e?.descripcion, e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is SedesMenuRecord;
}
