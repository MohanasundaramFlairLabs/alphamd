// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VitalListStruct extends FFFirebaseStruct {
  VitalListStruct({
    String? vitalType,
    double? vitalValue,
    DateTime? vitalDate,
    String? vitalNote,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _vitalType = vitalType,
        _vitalValue = vitalValue,
        _vitalDate = vitalDate,
        _vitalNote = vitalNote,
        super(firestoreUtilData);

  // "vitalType" field.
  String? _vitalType;
  String get vitalType => _vitalType ?? '';
  set vitalType(String? val) => _vitalType = val;
  bool hasVitalType() => _vitalType != null;

  // "vitalValue" field.
  double? _vitalValue;
  double get vitalValue => _vitalValue ?? 0.0;
  set vitalValue(double? val) => _vitalValue = val;
  void incrementVitalValue(double amount) => _vitalValue = vitalValue + amount;
  bool hasVitalValue() => _vitalValue != null;

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

  static VitalListStruct fromMap(Map<String, dynamic> data) => VitalListStruct(
        vitalType: data['vitalType'] as String?,
        vitalValue: castToType<double>(data['vitalValue']),
        vitalDate: data['VitalDate'] as DateTime?,
        vitalNote: data['vitalNote'] as String?,
      );

  static VitalListStruct? maybeFromMap(dynamic data) => data is Map
      ? VitalListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'vitalType': _vitalType,
        'vitalValue': _vitalValue,
        'VitalDate': _vitalDate,
        'vitalNote': _vitalNote,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vitalType': serializeParam(
          _vitalType,
          ParamType.String,
        ),
        'vitalValue': serializeParam(
          _vitalValue,
          ParamType.double,
        ),
        'VitalDate': serializeParam(
          _vitalDate,
          ParamType.DateTime,
        ),
        'vitalNote': serializeParam(
          _vitalNote,
          ParamType.String,
        ),
      }.withoutNulls;

  static VitalListStruct fromSerializableMap(Map<String, dynamic> data) =>
      VitalListStruct(
        vitalType: deserializeParam(
          data['vitalType'],
          ParamType.String,
          false,
        ),
        vitalValue: deserializeParam(
          data['vitalValue'],
          ParamType.double,
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
      );

  @override
  String toString() => 'VitalListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VitalListStruct &&
        vitalType == other.vitalType &&
        vitalValue == other.vitalValue &&
        vitalDate == other.vitalDate &&
        vitalNote == other.vitalNote;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([vitalType, vitalValue, vitalDate, vitalNote]);
}

VitalListStruct createVitalListStruct({
  String? vitalType,
  double? vitalValue,
  DateTime? vitalDate,
  String? vitalNote,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VitalListStruct(
      vitalType: vitalType,
      vitalValue: vitalValue,
      vitalDate: vitalDate,
      vitalNote: vitalNote,
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
