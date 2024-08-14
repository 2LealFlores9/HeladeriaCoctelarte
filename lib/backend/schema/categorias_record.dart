import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriasRecord extends FirestoreRecord {
  CategoriasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ProductoCho" field.
  String? _productoCho;
  String get productoCho => _productoCho ?? '';
  bool hasProductoCho() => _productoCho != null;

  // "ProductoFre" field.
  String? _productoFre;
  String get productoFre => _productoFre ?? '';
  bool hasProductoFre() => _productoFre != null;

  // "ProductoVa" field.
  String? _productoVa;
  String get productoVa => _productoVa ?? '';
  bool hasProductoVa() => _productoVa != null;

  // "imgChocolate" field.
  String? _imgChocolate;
  String get imgChocolate => _imgChocolate ?? '';
  bool hasImgChocolate() => _imgChocolate != null;

  // "imgFresa" field.
  String? _imgFresa;
  String get imgFresa => _imgFresa ?? '';
  bool hasImgFresa() => _imgFresa != null;

  // "imgVanillas" field.
  String? _imgVanillas;
  String get imgVanillas => _imgVanillas ?? '';
  bool hasImgVanillas() => _imgVanillas != null;

  // "precioCho" field.
  double? _precioCho;
  double get precioCho => _precioCho ?? 0.0;
  bool hasPrecioCho() => _precioCho != null;

  // "precioFre" field.
  double? _precioFre;
  double get precioFre => _precioFre ?? 0.0;
  bool hasPrecioFre() => _precioFre != null;

  // "precioVa" field.
  double? _precioVa;
  double get precioVa => _precioVa ?? 0.0;
  bool hasPrecioVa() => _precioVa != null;

  void _initializeFields() {
    _productoCho = snapshotData['ProductoCho'] as String?;
    _productoFre = snapshotData['ProductoFre'] as String?;
    _productoVa = snapshotData['ProductoVa'] as String?;
    _imgChocolate = snapshotData['imgChocolate'] as String?;
    _imgFresa = snapshotData['imgFresa'] as String?;
    _imgVanillas = snapshotData['imgVanillas'] as String?;
    _precioCho = castToType<double>(snapshotData['precioCho']);
    _precioFre = castToType<double>(snapshotData['precioFre']);
    _precioVa = castToType<double>(snapshotData['precioVa']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriasRecord.fromSnapshot(s));

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriasRecord.fromSnapshot(s));

  static CategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriasRecordData({
  String? productoCho,
  String? productoFre,
  String? productoVa,
  String? imgChocolate,
  String? imgFresa,
  String? imgVanillas,
  double? precioCho,
  double? precioFre,
  double? precioVa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductoCho': productoCho,
      'ProductoFre': productoFre,
      'ProductoVa': productoVa,
      'imgChocolate': imgChocolate,
      'imgFresa': imgFresa,
      'imgVanillas': imgVanillas,
      'precioCho': precioCho,
      'precioFre': precioFre,
      'precioVa': precioVa,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriasRecordDocumentEquality implements Equality<CategoriasRecord> {
  const CategoriasRecordDocumentEquality();

  @override
  bool equals(CategoriasRecord? e1, CategoriasRecord? e2) {
    return e1?.productoCho == e2?.productoCho &&
        e1?.productoFre == e2?.productoFre &&
        e1?.productoVa == e2?.productoVa &&
        e1?.imgChocolate == e2?.imgChocolate &&
        e1?.imgFresa == e2?.imgFresa &&
        e1?.imgVanillas == e2?.imgVanillas &&
        e1?.precioCho == e2?.precioCho &&
        e1?.precioFre == e2?.precioFre &&
        e1?.precioVa == e2?.precioVa;
  }

  @override
  int hash(CategoriasRecord? e) => const ListEquality().hash([
        e?.productoCho,
        e?.productoFre,
        e?.productoVa,
        e?.imgChocolate,
        e?.imgFresa,
        e?.imgVanillas,
        e?.precioCho,
        e?.precioFre,
        e?.precioVa
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoriasRecord;
}
