// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VitalListStruct extends FFFirebaseStruct {
  VitalListStruct({
    String? vitalType,
    DateTime? vitalDate,
    String? vitalNote,
    int? vitalValue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _vitalType = vitalType,
        _vitalDate = vitalDate,
        _vitalNote = vitalNote,
        _vitalValue = vitalValue,
        super(firestoreUtilData);

  // "vitalType" field.
  String? _vitalType;
  String get vitalType => _vitalType ?? '';
  set vitalType(String? val) => _vitalType = val;
  bool hasVitalType() => _vitalType != null;

  // "VitalDate" field.
  DateTime? _vitalDate;
  DateTime? get vitalDate => _vitalDate;
  set vitalDate(DateTime? val) => _vitalDate = val;
  bool hasVitalDate() => _vitalDate != null;

  // "vitalNote" field.
  String? _vitalNote;
  String get vitalNote => _vitalNote ?? '';
  set vitalNote(String? val) => _vitalNote = val;
  bool hasVitalNote() => _vitalNote != null;

  // "vitalValue" field.
  int? _vitalValue;
  int get vitalValue => _vitalValue ?? 0;
  set vitalValue(int? val) => _vitalValue = val;
  void incrementVitalValue(int amount) => _vitalValue = vitalValue + amount;
  bool hasVitalValue() => _vitalValue != null;

  static VitalListStruct fromMap(Map<String, dynamic> data) => VitalListStruct(
        vitalType: data['vitalType'] as String?,
        vitalDate: data['VitalDate'] as DateTime?,
        vitalNote: data['vitalNote'] as String?,
        vitalValue: castToType<int>(data['vitalValue']),
      );

  static VitalListStruct? maybeFromMap(dynamic data) => data is Map
      ? VitalListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'vitalType': _vitalType,
        'VitalDate': _vitalDate,
        'vitalNote': _vitalNote,
        'vitalValue': _vitalValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vitalType': serializeParam(
          _vitalType,
          ParamType.String,
        ),
        'VitalDate': serializeParam(
          _vitalDate,
          ParamType.DateTime,
        ),
        'vitalNote': serializeParam(
          _vitalNote,
          ParamType.String,
        ),
        'vitalValue': serializeParam(
          _vitalValue,
          ParamType.int,
        ),
      }.withoutNulls;

  static VitalListStruct fromSerializableMap(Map<String, dynamic> data) =>
      VitalListStruct(
        vitalType: deserializeParam(
          data['vitalType'],
          ParamType.String,
          false,
        ),
        vitalDate: deserializeParam(
          data['VitalDate'],
          ParamType.DateTime,
          false,
        ),
        vitalNote: deserializeParam(
          data['vitalNote'],
          ParamType.String,
          false,
        ),
        vitalValue: deserializeParam(
          data['vitalValue'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VitalListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VitalListStruct &&
        vitalType == other.vitalType &&
        vitalDate == other.vitalDate &&
        vitalNote == other.vitalNote &&
        vitalValue == other.vitalValue;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([vitalType, vitalDate, vitalNote, vitalValue]);
}

VitalListStruct createVitalListStruct({
  String? vitalType,
  DateTime? vitalDate,
  String? vitalNote,
  int? vitalValue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VitalListStruct(
      vitalType: vitalType,
      vitalDate: vitalDate,
      vitalNote: vitalNote,
      vitalValue: vitalValue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VitalListStruct? updateVitalListStruct(
  VitalListStruct? vitalList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vitalList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVitalListStructData(
  Map<String, dynamic> firestoreData,
  VitalListStruct? vitalList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vitalList == null) {
    return;
  }
  if (vitalList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vitalList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vitalListData = getVitalListFirestoreData(vitalList, forFieldValue);
  final nestedData = vitalListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vitalList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVitalListFirestoreData(
  VitalListStruct? vitalList, [
  bool forFieldValue = false,
]) {
  if (vitalList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vitalList.toMap());

  // Add any Firestore field values
  vitalList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVitalListListFirestoreData(
  List<VitalListStruct>? vitalLists,
) =>
    vitalLists?.map((e) => getVitalListFirestoreData(e, true)).toList() ?? [];
