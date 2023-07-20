import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SedespuntosDatosRecord extends FirestoreRecord {
  SedespuntosDatosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "sedes_menu" field.
  DocumentReference? _sedesMenu;
  DocumentReference? get sedesMenu => _sedesMenu;
  bool hasSedesMenu() => _sedesMenu != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _sedesMenu = snapshotData['sedes_menu'] as DocumentReference?;
    _direccion = snapshotData['direccion'] as String?;
    _telefono = snapshotData['telefono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sedespuntosDatos');

  static Stream<SedespuntosDatosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SedespuntosDatosRecord.fromSnapshot(s));

  static Future<SedespuntosDatosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SedespuntosDatosRecord.fromSnapshot(s));

  static SedespuntosDatosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SedespuntosDatosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SedespuntosDatosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SedespuntosDatosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SedespuntosDatosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SedespuntosDatosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSedespuntosDatosRecordData({
  String? nombre,
  DocumentReference? sedesMenu,
  String? direccion,
  String? telefono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'sedes_menu': sedesMenu,
      'direccion': direccion,
      'telefono': telefono,
    }.withoutNulls,
  );

  return firestoreData;
}

class SedespuntosDatosRecordDocumentEquality
    implements Equality<SedespuntosDatosRecord> {
  const SedespuntosDatosRecordDocumentEquality();

  @override
  bool equals(SedespuntosDatosRecord? e1, SedespuntosDatosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.sedesMenu == e2?.sedesMenu &&
        e1?.direccion == e2?.direccion &&
        e1?.telefono == e2?.telefono;
  }

  @override
  int hash(SedespuntosDatosRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.sedesMenu, e?.direccion, e?.telefono]);

  @override
  bool isValidKey(Object? o) => o is SedespuntosDatosRecord;
}
