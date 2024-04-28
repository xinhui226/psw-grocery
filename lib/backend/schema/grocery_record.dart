import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroceryRecord extends FirestoreRecord {
  GroceryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "item_count" field.
  int? _itemCount;
  int get itemCount => _itemCount ?? 0;
  bool hasItemCount() => _itemCount != null;

  // "is_checked" field.
  bool? _isChecked;
  bool get isChecked => _isChecked ?? false;
  bool hasIsChecked() => _isChecked != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _itemName = snapshotData['item_name'] as String?;
    _itemCount = castToType<int>(snapshotData['item_count']);
    _isChecked = snapshotData['is_checked'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('grocery')
          : FirebaseFirestore.instance.collectionGroup('grocery');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('grocery').doc(id);

  static Stream<GroceryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroceryRecord.fromSnapshot(s));

  static Future<GroceryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroceryRecord.fromSnapshot(s));

  static GroceryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroceryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroceryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroceryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroceryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroceryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroceryRecordData({
  DocumentReference? owner,
  DateTime? timeCreated,
  String? itemName,
  int? itemCount,
  bool? isChecked,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'time_created': timeCreated,
      'item_name': itemName,
      'item_count': itemCount,
      'is_checked': isChecked,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroceryRecordDocumentEquality implements Equality<GroceryRecord> {
  const GroceryRecordDocumentEquality();

  @override
  bool equals(GroceryRecord? e1, GroceryRecord? e2) {
    return e1?.owner == e2?.owner &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.itemName == e2?.itemName &&
        e1?.itemCount == e2?.itemCount &&
        e1?.isChecked == e2?.isChecked;
  }

  @override
  int hash(GroceryRecord? e) => const ListEquality().hash(
      [e?.owner, e?.timeCreated, e?.itemName, e?.itemCount, e?.isChecked]);

  @override
  bool isValidKey(Object? o) => o is GroceryRecord;
}
