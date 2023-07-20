import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CedulaPasaporte" field.
  String? _cedulaPasaporte;
  String get cedulaPasaporte => _cedulaPasaporte ?? '';
  bool hasCedulaPasaporte() => _cedulaPasaporte != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "NumeroCelular" field.
  int? _numeroCelular;
  int get numeroCelular => _numeroCelular ?? 0;
  bool hasNumeroCelular() => _numeroCelular != null;

  // "CorreoElectronico" field.
  String? _correoElectronico;
  String get correoElectronico => _correoElectronico ?? '';
  bool hasCorreoElectronico() => _correoElectronico != null;

  void _initializeFields() {
    _cedulaPasaporte = snapshotData['CedulaPasaporte'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
    _apellidos = snapshotData['Apellidos'] as String?;
    _numeroCelular = castToType<int>(snapshotData['NumeroCelular']);
    _correoElectronico = snapshotData['CorreoElectronico'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  String? cedulaPasaporte,
  String? nombre,
  String? apellidos,
  int? numeroCelular,
  String? correoElectronico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CedulaPasaporte': cedulaPasaporte,
      'Nombre': nombre,
      'Apellidos': apellidos,
      'NumeroCelular': numeroCelular,
      'CorreoElectronico': correoElectronico,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.cedulaPasaporte == e2?.cedulaPasaporte &&
        e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.numeroCelular == e2?.numeroCelular &&
        e1?.correoElectronico == e2?.correoElectronico;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.cedulaPasaporte,
        e?.nombre,
        e?.apellidos,
        e?.numeroCelular,
        e?.correoElectronico
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
