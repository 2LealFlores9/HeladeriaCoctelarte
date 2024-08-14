import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UbicacionRecord extends FirestoreRecord {
  UbicacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UsuarioUbi" field.
  String? _usuarioUbi;
  String get usuarioUbi => _usuarioUbi ?? '';
  bool hasUsuarioUbi() => _usuarioUbi != null;

  // "DireccionMap" field.
  LatLng? _direccionMap;
  LatLng? get direccionMap => _direccionMap;
  bool hasDireccionMap() => _direccionMap != null;

  // "Mapa" field.
  LatLng? _mapa;
  LatLng? get mapa => _mapa;
  bool hasMapa() => _mapa != null;

  // "BusquedaMap" field.
  String? _busquedaMap;
  String get busquedaMap => _busquedaMap ?? '';
  bool hasBusquedaMap() => _busquedaMap != null;

  void _initializeFields() {
    _usuarioUbi = snapshotData['UsuarioUbi'] as String?;
    _direccionMap = snapshotData['DireccionMap'] as LatLng?;
    _mapa = snapshotData['Mapa'] as LatLng?;
    _busquedaMap = snapshotData['BusquedaMap'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ubicacion');

  static Stream<UbicacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UbicacionRecord.fromSnapshot(s));

  static Future<UbicacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UbicacionRecord.fromSnapshot(s));

  static UbicacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UbicacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UbicacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UbicacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UbicacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UbicacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUbicacionRecordData({
  String? usuarioUbi,
  LatLng? direccionMap,
  LatLng? mapa,
  String? busquedaMap,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UsuarioUbi': usuarioUbi,
      'DireccionMap': direccionMap,
      'Mapa': mapa,
      'BusquedaMap': busquedaMap,
    }.withoutNulls,
  );

  return firestoreData;
}

class UbicacionRecordDocumentEquality implements Equality<UbicacionRecord> {
  const UbicacionRecordDocumentEquality();

  @override
  bool equals(UbicacionRecord? e1, UbicacionRecord? e2) {
    return e1?.usuarioUbi == e2?.usuarioUbi &&
        e1?.direccionMap == e2?.direccionMap &&
        e1?.mapa == e2?.mapa &&
        e1?.busquedaMap == e2?.busquedaMap;
  }

  @override
  int hash(UbicacionRecord? e) => const ListEquality()
      .hash([e?.usuarioUbi, e?.direccionMap, e?.mapa, e?.busquedaMap]);

  @override
  bool isValidKey(Object? o) => o is UbicacionRecord;
}
