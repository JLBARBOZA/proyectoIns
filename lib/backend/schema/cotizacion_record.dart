import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CotizacionRecord extends FirestoreRecord {
  CotizacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PasaporteCedula" field.
  String? _pasaporteCedula;
  String get pasaporteCedula => _pasaporteCedula ?? '';
  bool hasPasaporteCedula() => _pasaporteCedula != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "Celular" field.
  int? _celular;
  int get celular => _celular ?? 0;
  bool hasCelular() => _celular != null;

  // "Correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "Seguro" field.
  String? _seguro;
  String get seguro => _seguro ?? '';
  bool hasSeguro() => _seguro != null;

  void _initializeFields() {
    _pasaporteCedula = snapshotData['PasaporteCedula'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
    _apellidos = snapshotData['Apellidos'] as String?;
    _celular = castToType<int>(snapshotData['Celular']);
    _correo = snapshotData['Correo'] as String?;
    _seguro = snapshotData['Seguro'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cotizacion');

  static Stream<CotizacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CotizacionRecord.fromSnapshot(s));

  static Future<CotizacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CotizacionRecord.fromSnapshot(s));

  static CotizacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CotizacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CotizacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CotizacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CotizacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CotizacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCotizacionRecordData({
  String? pasaporteCedula,
  String? nombre,
  String? apellidos,
  int? celular,
  String? correo,
  String? seguro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PasaporteCedula': pasaporteCedula,
      'Nombre': nombre,
      'Apellidos': apellidos,
      'Celular': celular,
      'Correo': correo,
      'Seguro': seguro,
    }.withoutNulls,
  );

  return firestoreData;
}

class CotizacionRecordDocumentEquality implements Equality<CotizacionRecord> {
  const CotizacionRecordDocumentEquality();

  @override
  bool equals(CotizacionRecord? e1, CotizacionRecord? e2) {
    return e1?.pasaporteCedula == e2?.pasaporteCedula &&
        e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.celular == e2?.celular &&
        e1?.correo == e2?.correo &&
        e1?.seguro == e2?.seguro;
  }

  @override
  int hash(CotizacionRecord? e) => const ListEquality().hash([
        e?.pasaporteCedula,
        e?.nombre,
        e?.apellidos,
        e?.celular,
        e?.correo,
        e?.seguro
      ]);

  @override
  bool isValidKey(Object? o) => o is CotizacionRecord;
}
