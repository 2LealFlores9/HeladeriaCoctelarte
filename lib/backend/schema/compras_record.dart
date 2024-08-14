import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComprasRecord extends FirestoreRecord {
  ComprasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PrecioCom" field.
  double? _precioCom;
  double get precioCom => _precioCom ?? 0.0;
  bool hasPrecioCom() => _precioCom != null;

  // "Carrito" field.
  String? _carrito;
  String get carrito => _carrito ?? '';
  bool hasCarrito() => _carrito != null;

  // "ProductoCom" field.
  String? _productoCom;
  String get productoCom => _productoCom ?? '';
  bool hasProductoCom() => _productoCom != null;

  // "CodigoCom" field.
  bool? _codigoCom;
  bool get codigoCom => _codigoCom ?? false;
  bool hasCodigoCom() => _codigoCom != null;

  // "Codigo" field.
  double? _codigo;
  double get codigo => _codigo ?? 0.0;
  bool hasCodigo() => _codigo != null;

  // "SumaCarrito" field.
  double? _sumaCarrito;
  double get sumaCarrito => _sumaCarrito ?? 0.0;
  bool hasSumaCarrito() => _sumaCarrito != null;

  // "Descuento" field.
  double? _descuento;
  double get descuento => _descuento ?? 0.0;
  bool hasDescuento() => _descuento != null;

  // "FinalizarCom" field.
  double? _finalizarCom;
  double get finalizarCom => _finalizarCom ?? 0.0;
  bool hasFinalizarCom() => _finalizarCom != null;

  // "Telefono" field.
  double? _telefono;
  double get telefono => _telefono ?? 0.0;
  bool hasTelefono() => _telefono != null;

  void _initializeFields() {
    _precioCom = castToType<double>(snapshotData['PrecioCom']);
    _carrito = snapshotData['Carrito'] as String?;
    _productoCom = snapshotData['ProductoCom'] as String?;
    _codigoCom = snapshotData['CodigoCom'] as bool?;
    _codigo = castToType<double>(snapshotData['Codigo']);
    _sumaCarrito = castToType<double>(snapshotData['SumaCarrito']);
    _descuento = castToType<double>(snapshotData['Descuento']);
    _finalizarCom = castToType<double>(snapshotData['FinalizarCom']);
    _telefono = castToType<double>(snapshotData['Telefono']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Compras');

  static Stream<ComprasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComprasRecord.fromSnapshot(s));

  static Future<ComprasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComprasRecord.fromSnapshot(s));

  static ComprasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComprasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComprasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComprasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComprasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComprasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComprasRecordData({
  double? precioCom,
  String? carrito,
  String? productoCom,
  bool? codigoCom,
  double? codigo,
  double? sumaCarrito,
  double? descuento,
  double? finalizarCom,
  double? telefono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PrecioCom': precioCom,
      'Carrito': carrito,
      'ProductoCom': productoCom,
      'CodigoCom': codigoCom,
      'Codigo': codigo,
      'SumaCarrito': sumaCarrito,
      'Descuento': descuento,
      'FinalizarCom': finalizarCom,
      'Telefono': telefono,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComprasRecordDocumentEquality implements Equality<ComprasRecord> {
  const ComprasRecordDocumentEquality();

  @override
  bool equals(ComprasRecord? e1, ComprasRecord? e2) {
    return e1?.precioCom == e2?.precioCom &&
        e1?.carrito == e2?.carrito &&
        e1?.productoCom == e2?.productoCom &&
        e1?.codigoCom == e2?.codigoCom &&
        e1?.codigo == e2?.codigo &&
        e1?.sumaCarrito == e2?.sumaCarrito &&
        e1?.descuento == e2?.descuento &&
        e1?.finalizarCom == e2?.finalizarCom &&
        e1?.telefono == e2?.telefono;
  }

  @override
  int hash(ComprasRecord? e) => const ListEquality().hash([
        e?.precioCom,
        e?.carrito,
        e?.productoCom,
        e?.codigoCom,
        e?.codigo,
        e?.sumaCarrito,
        e?.descuento,
        e?.finalizarCom,
        e?.telefono
      ]);

  @override
  bool isValidKey(Object? o) => o is ComprasRecord;
}
