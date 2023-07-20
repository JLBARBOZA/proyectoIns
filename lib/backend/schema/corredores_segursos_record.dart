import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CorredoresSegursosRecord extends FirestoreRecord {
  CorredoresSegursosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Codigo" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  bool hasCodigo() => _codigo != null;

  // "CedulaJuridica" field.
  int? _cedulaJuridica;
  int get cedulaJuridica => _cedulaJuridica ?? 0;
  bool hasCedulaJuridica() => _cedulaJuridica != null;

  // "Gerente" field.
  String? _gerente;
  String get gerente => _gerente ?? '';
  bool hasGerente() => _gerente != null;

  // "Telefono" field.
  int? _telefono;
  int get telefono => _telefono ?? 0;
  bool hasTelefono() => _telefono != null;

  // "Correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "Sedes" field.
  String? _sedes;
  String get sedes => _sedes ?? '';
  bool hasSedes() => _sedes != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Licencia" field.
  String? _licencia;
  String get licencia => _licencia ?? '';
  bool hasLicencia() => _licencia != null;

  // "Representante" field.
  String? _representante;
  String get representante => _representante ?? '';
  bool hasRepresentante() => _representante != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _codigo = castToType<int>(snapshotData['Codigo']);
    _cedulaJuridica = castToType<int>(snapshotData['CedulaJuridica']);
    _gerente = snapshotData['Gerente'] as String?;
    _telefono = castToType<int>(snapshotData['Telefono']);
    _correo = snapshotData['Correo'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
    _sedes = snapshotData['Sedes'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
    _licencia = snapshotData['Licencia'] as String?;
    _representante = snapshotData['Representante'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('corredoresSegursos');

  static Stream<CorredoresSegursosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CorredoresSegursosRecord.fromSnapshot(s));

  static Future<CorredoresSegursosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CorredoresSegursosRecord.fromSnapshot(s));

  static CorredoresSegursosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CorredoresSegursosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CorredoresSegursosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CorredoresSegursosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CorredoresSegursosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CorredoresSegursosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCorredoresSegursosRecordData({
  String? nombre,
  int? codigo,
  int? cedulaJuridica,
  String? gerente,
  int? telefono,
  String? correo,
  String? direccion,
  String? sedes,
  String? imagen,
  String? licencia,
  String? representante,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Codigo': codigo,
      'CedulaJuridica': cedulaJuridica,
      'Gerente': gerente,
      'Telefono': telefono,
      'Correo': correo,
      'Direccion': direccion,
      'Sedes': sedes,
      'Imagen': imagen,
      'Licencia': licencia,
      'Representante': representante,
    }.withoutNulls,
  );

  return firestoreData;
}

class CorredoresSegursosRecordDocumentEquality
    implements Equality<CorredoresSegursosRecord> {
  const CorredoresSegursosRecordDocumentEquality();

  @override
  bool equals(CorredoresSegursosRecord? e1, CorredoresSegursosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.codigo == e2?.codigo &&
        e1?.cedulaJuridica == e2?.cedulaJuridica &&
        e1?.gerente == e2?.gerente &&
        e1?.telefono == e2?.telefono &&
        e1?.correo == e2?.correo &&
        e1?.direccion == e2?.direccion &&
        e1?.sedes == e2?.sedes &&
        e1?.imagen == e2?.imagen &&
        e1?.licencia == e2?.licencia &&
        e1?.representante == e2?.representante;
  }

  @override
  int hash(CorredoresSegursosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.codigo,
        e?.cedulaJuridica,
        e?.gerente,
        e?.telefono,
        e?.correo,
        e?.direccion,
        e?.sedes,
        e?.imagen,
        e?.licencia,
        e?.representante
      ]);

  @override
  bool isValidKey(Object? o) => o is CorredoresSegursosRecord;
}
