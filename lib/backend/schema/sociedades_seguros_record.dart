import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SociedadesSegurosRecord extends FirestoreRecord {
  SociedadesSegurosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "codigo" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  bool hasCodigo() => _codigo != null;

  // "licencia" field.
  String? _licencia;
  String get licencia => _licencia ?? '';
  bool hasLicencia() => _licencia != null;

  // "cedulaJuridica" field.
  String? _cedulaJuridica;
  String get cedulaJuridica => _cedulaJuridica ?? '';
  bool hasCedulaJuridica() => _cedulaJuridica != null;

  // "gerente" field.
  String? _gerente;
  String get gerente => _gerente ?? '';
  bool hasGerente() => _gerente != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "encargado" field.
  String? _encargado;
  String get encargado => _encargado ?? '';
  bool hasEncargado() => _encargado != null;

  // "correoEncargado" field.
  String? _correoEncargado;
  String get correoEncargado => _correoEncargado ?? '';
  bool hasCorreoEncargado() => _correoEncargado != null;

  // "telefonos" field.
  String? _telefonos;
  String get telefonos => _telefonos ?? '';
  bool hasTelefonos() => _telefonos != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "sedes" field.
  String? _sedes;
  String get sedes => _sedes ?? '';
  bool hasSedes() => _sedes != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _codigo = castToType<int>(snapshotData['codigo']);
    _licencia = snapshotData['licencia'] as String?;
    _cedulaJuridica = snapshotData['cedulaJuridica'] as String?;
    _gerente = snapshotData['gerente'] as String?;
    _correo = snapshotData['correo'] as String?;
    _encargado = snapshotData['encargado'] as String?;
    _correoEncargado = snapshotData['correoEncargado'] as String?;
    _telefonos = snapshotData['telefonos'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _sedes = snapshotData['sedes'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _nombre = snapshotData['nombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sociedadesSeguros');

  static Stream<SociedadesSegurosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SociedadesSegurosRecord.fromSnapshot(s));

  static Future<SociedadesSegurosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SociedadesSegurosRecord.fromSnapshot(s));

  static SociedadesSegurosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SociedadesSegurosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SociedadesSegurosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SociedadesSegurosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SociedadesSegurosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SociedadesSegurosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSociedadesSegurosRecordData({
  int? codigo,
  String? licencia,
  String? cedulaJuridica,
  String? gerente,
  String? correo,
  String? encargado,
  String? correoEncargado,
  String? telefonos,
  String? direccion,
  String? sedes,
  String? imagen,
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codigo': codigo,
      'licencia': licencia,
      'cedulaJuridica': cedulaJuridica,
      'gerente': gerente,
      'correo': correo,
      'encargado': encargado,
      'correoEncargado': correoEncargado,
      'telefonos': telefonos,
      'direccion': direccion,
      'sedes': sedes,
      'imagen': imagen,
      'nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class SociedadesSegurosRecordDocumentEquality
    implements Equality<SociedadesSegurosRecord> {
  const SociedadesSegurosRecordDocumentEquality();

  @override
  bool equals(SociedadesSegurosRecord? e1, SociedadesSegurosRecord? e2) {
    return e1?.codigo == e2?.codigo &&
        e1?.licencia == e2?.licencia &&
        e1?.cedulaJuridica == e2?.cedulaJuridica &&
        e1?.gerente == e2?.gerente &&
        e1?.correo == e2?.correo &&
        e1?.encargado == e2?.encargado &&
        e1?.correoEncargado == e2?.correoEncargado &&
        e1?.telefonos == e2?.telefonos &&
        e1?.direccion == e2?.direccion &&
        e1?.sedes == e2?.sedes &&
        e1?.imagen == e2?.imagen &&
        e1?.nombre == e2?.nombre;
  }

  @override
  int hash(SociedadesSegurosRecord? e) => const ListEquality().hash([
        e?.codigo,
        e?.licencia,
        e?.cedulaJuridica,
        e?.gerente,
        e?.correo,
        e?.encargado,
        e?.correoEncargado,
        e?.telefonos,
        e?.direccion,
        e?.sedes,
        e?.imagen,
        e?.nombre
      ]);

  @override
  bool isValidKey(Object? o) => o is SociedadesSegurosRecord;
}
