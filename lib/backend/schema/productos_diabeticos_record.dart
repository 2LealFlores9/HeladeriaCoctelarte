import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosDiabeticosRecord extends FirestoreRecord {
  ProductosDiabeticosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NombreD" field.
  String? _nombreD;
  String get nombreD => _nombreD ?? '';
  bool hasNombreD() => _nombreD != null;

  // "PresioD" field.
  double? _presioD;
  double get presioD => _presioD ?? 0.0;
  bool hasPresioD() => _presioD != null;

  // "imgProductoD" field.
  String? _imgProductoD;
  String get imgProductoD => _imgProductoD ?? '';
  bool hasImgProductoD() => _imgProductoD != null;

  void _initializeFields() {
    _nombreD = snapshotData['NombreD'] as String?;
    _presioD = castToType<double>(snapshotData['PresioD']);
    _imgProductoD = snapshotData['imgProductoD'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductosDiabeticos');

  static Stream<ProductosDiabeticosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosDiabeticosRecord.fromSnapshot(s));

  static Future<ProductosDiabeticosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProductosDiabeticosRecord.fromSnapshot(s));

  static ProductosDiabeticosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosDiabeticosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosDiabeticosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosDiabeticosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosDiabeticosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosDiabeticosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosDiabeticosRecordData({
  String? nombreD,
  double? presioD,
  String? imgProductoD,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombreD': nombreD,
      'PresioD': presioD,
      'imgProductoD': imgProductoD,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosDiabeticosRecordDocumentEquality
    implements Equality<ProductosDiabeticosRecord> {
  const ProductosDiabeticosRecordDocumentEquality();

  @override
  bool equals(ProductosDiabeticosRecord? e1, ProductosDiabeticosRecord? e2) {
    return e1?.nombreD == e2?.nombreD &&
        e1?.presioD == e2?.presioD &&
        e1?.imgProductoD == e2?.imgProductoD;
  }

  @override
  int hash(ProductosDiabeticosRecord? e) =>
      const ListEquality().hash([e?.nombreD, e?.presioD, e?.imgProductoD]);

  @override
  bool isValidKey(Object? o) => o is ProductosDiabeticosRecord;
}
