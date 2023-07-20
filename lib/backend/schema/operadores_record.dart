import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OperadoresRecord extends FirestoreRecord {
  OperadoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "cedulaJuridica" field.
  String? _cedulaJuridica;
  String get cedulaJuridica => _cedulaJuridica ?? '';
  bool hasCedulaJuridica() => _cedulaJuridica != null;

  // "razonSocial" field.
  String? _razonSocial;
  String get razonSocial => _razonSocial ?? '';
  bool hasRazonSocial() => _razonSocial != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "contratoVence" field.
  String? _contratoVence;
  String get contratoVence => _contratoVence ?? '';
  bool hasContratoVence() => _contratoVence != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _codigo = snapshotData['codigo'] as String?;
    _cedulaJuridica = snapshotData['cedulaJuridica'] as String?;
    _razonSocial = snapshotData['razonSocial'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _correo = snapshotData['correo'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _contratoVence = snapshotData['contratoVence'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('operadores');

  static Stream<OperadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OperadoresRecord.fromSnapshot(s));

  static Future<OperadoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OperadoresRecord.fromSnapshot(s));

  static OperadoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OperadoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OperadoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OperadoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OperadoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OperadoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOperadoresRecordData({
  String? nombre,
  String? codigo,
  String? cedulaJuridica,
  String? razonSocial,
  String? telefono,
  String? direccion,
  String? correo,
  String? imagen,
  String? contratoVence,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'codigo': codigo,
      'cedulaJuridica': cedulaJuridica,
      'razonSocial': razonSocial,
      'telefono': telefono,
      'direccion': direccion,
      'correo': correo,
      'imagen': imagen,
      'contratoVence': contratoVence,
    }.withoutNulls,
  );

  return firestoreData;
}

class OperadoresRecordDocumentEquality implements Equality<OperadoresRecord> {
  const OperadoresRecordDocumentEquality();

  @override
  bool equals(OperadoresRecord? e1, OperadoresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.codigo == e2?.codigo &&
        e1?.cedulaJuridica == e2?.cedulaJuridica &&
        e1?.razonSocial == e2?.razonSocial &&
        e1?.telefono == e2?.telefono &&
        e1?.direccion == e2?.direccion &&
        e1?.correo == e2?.correo &&
        e1?.imagen == e2?.imagen &&
        e1?.contratoVence == e2?.contratoVence;
  }

  @override
  int hash(OperadoresRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.codigo,
        e?.cedulaJuridica,
        e?.razonSocial,
        e?.telefono,
        e?.direccion,
        e?.correo,
        e?.imagen,
        e?.contratoVence
      ]);

  @override
  bool isValidKey(Object? o) => o is OperadoresRecord;
}
