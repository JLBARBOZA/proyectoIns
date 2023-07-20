import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatosAgentesRecord extends FirestoreRecord {
  DatosAgentesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "CodigoSociedadAgencia" field.
  String? _codigoSociedadAgencia;
  String get codigoSociedadAgencia => _codigoSociedadAgencia ?? '';
  bool hasCodigoSociedadAgencia() => _codigoSociedadAgencia != null;

  // "LicenciaSugese" field.
  int? _licenciaSugese;
  int get licenciaSugese => _licenciaSugese ?? 0;
  bool hasLicenciaSugese() => _licenciaSugese != null;

  // "Celular" field.
  int? _celular;
  int get celular => _celular ?? 0;
  bool hasCelular() => _celular != null;

  // "Correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "Provincia" field.
  DocumentReference? _provincia;
  DocumentReference? get provincia => _provincia;
  bool hasProvincia() => _provincia != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _codigoSociedadAgencia = snapshotData['CodigoSociedadAgencia'] as String?;
    _licenciaSugese = castToType<int>(snapshotData['LicenciaSugese']);
    _celular = castToType<int>(snapshotData['Celular']);
    _correo = snapshotData['Correo'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
    _provincia = snapshotData['Provincia'] as DocumentReference?;
    _imagen = snapshotData['Imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('datosAgentes');

  static Stream<DatosAgentesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DatosAgentesRecord.fromSnapshot(s));

  static Future<DatosAgentesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DatosAgentesRecord.fromSnapshot(s));

  static DatosAgentesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DatosAgentesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DatosAgentesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DatosAgentesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DatosAgentesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DatosAgentesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDatosAgentesRecordData({
  String? nombre,
  String? codigoSociedadAgencia,
  int? licenciaSugese,
  int? celular,
  String? correo,
  String? direccion,
  DocumentReference? provincia,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'CodigoSociedadAgencia': codigoSociedadAgencia,
      'LicenciaSugese': licenciaSugese,
      'Celular': celular,
      'Correo': correo,
      'Direccion': direccion,
      'Provincia': provincia,
      'Imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class DatosAgentesRecordDocumentEquality
    implements Equality<DatosAgentesRecord> {
  const DatosAgentesRecordDocumentEquality();

  @override
  bool equals(DatosAgentesRecord? e1, DatosAgentesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.codigoSociedadAgencia == e2?.codigoSociedadAgencia &&
        e1?.licenciaSugese == e2?.licenciaSugese &&
        e1?.celular == e2?.celular &&
        e1?.correo == e2?.correo &&
        e1?.direccion == e2?.direccion &&
        e1?.provincia == e2?.provincia &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(DatosAgentesRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.codigoSociedadAgencia,
        e?.licenciaSugese,
        e?.celular,
        e?.correo,
        e?.direccion,
        e?.provincia,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is DatosAgentesRecord;
}
