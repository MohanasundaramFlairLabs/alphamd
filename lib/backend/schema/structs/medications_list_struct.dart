// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationsListStruct extends FFFirebaseStruct {
  MedicationsListStruct({
    String? medicationName,
    double? medicationQuantity,
    double? medicationMg,
    DateTime? medicationDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _medicationName = medicationName,
        _medicationQuantity = medicationQuantity,
        _medicationMg = medicationMg,
        _medicationDate = medicationDate,
        super(firestoreUtilData);

  // "medication_name" field.
  String? _medicationName;
  String get medicationName => _medicationName ?? '';
  set medicationName(String? val) => _medicationName = val;
  bool hasMedicationName() => _medicationName != null;

  // "medication_quantity" field.
  double? _medicationQuantity;
  double get medicationQuantity => _medicationQuantity ?? 0.0;
  set medicationQuantity(double? val) => _medicationQuantity = val;
  void incrementMedicationQuantity(double amount) =>
      _medicationQuantity = medicationQuantity + amount;
  bool hasMedicationQuantity() => _medicationQuantity != null;

  // "medication_mg" field.
  double? _medicationMg;
  double get medicationMg => _medicationMg ?? 0.0;
  set medicationMg(double? val) => _medicationMg = val;
  void incrementMedicationMg(double amount) =>
      _medicationMg = medicationMg + amount;
  bool hasMedicationMg() => _medicationMg != null;

  // "medication_date" field.
  DateTime? _medicationDate;
  DateTime? get medicationDate => _medicationDate;
  set medicationDate(DateTime? val) => _medicationDate = val;
  bool hasMedicationDate() => _medicationDate != null;

  static MedicationsListStruct fromMap(Map<String, dynamic> data) =>
      MedicationsListStruct(
        medicationName: data['medication_name'] as String?,
        medicationQuantity: castToType<double>(data['medication_quantity']),
        medicationMg: castToType<double>(data['medication_mg']),
        medicationDate: data['medication_date'] as DateTime?,
      );

  static MedicationsListStruct? maybeFromMap(dynamic data) => data is Map
      ? MedicationsListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'medication_name': _medicationName,
        'medication_quantity': _medicationQuantity,
        'medication_mg': _medicationMg,
        'medication_date': _medicationDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'medication_name': serializeParam(
          _medicationName,
          ParamType.String,
        ),
        'medication_quantity': serializeParam(
          _medicationQuantity,
          ParamType.double,
        ),
        'medication_mg': serializeParam(
          _medicationMg,
          ParamType.double,
        ),
        'medication_date': serializeParam(
          _medicationDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MedicationsListStruct fromSerializableMap(Map<String, dynamic> data) =>
      MedicationsListStruct(
        medicationName: deserializeParam(
          data['medication_name'],
          ParamType.String,
          false,
        ),
        medicationQuantity: deserializeParam(
          data['medication_quantity'],
          ParamType.double,
          false,
        ),
        medicationMg: deserializeParam(
          data['medication_mg'],
          ParamType.double,
          false,
        ),
        medicationDate: deserializeParam(
          data['medication_date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MedicationsListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MedicationsListStruct &&
        medicationName == other.medicationName &&
        medicationQuantity == other.medicationQuantity &&
        medicationMg == other.medicationMg &&
        medicationDate == other.medicationDate;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([medicationName, medicationQuantity, medicationMg, medicationDate]);
}

MedicationsListStruct createMedicationsListStruct({
  String? medicationName,
  double? medicationQuantity,
  double? medicationMg,
  DateTime? medicationDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MedicationsListStruct(
      medicationName: medicationName,
      medicationQuantity: medicationQuantity,
      medicationMg: medicationMg,
      medicationDate: medicationDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MedicationsListStruct? updateMedicationsListStruct(
  MedicationsListStruct? medicationsList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    medicationsList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMedicationsListStructData(
  Map<String, dynamic> firestoreData,
  MedicationsListStruct? medicationsList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (medicationsList == null) {
    return;
  }
  if (medicationsList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && medicationsList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final medicationsListData =
      getMedicationsListFirestoreData(medicationsList, forFieldValue);
  final nestedData =
      medicationsListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = medicationsList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMedicationsListFirestoreData(
  MedicationsListStruct? medicationsList, [
  bool forFieldValue = false,
]) {
  if (medicationsList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(medicationsList.toMap());

  // Add any Firestore field values
  medicationsList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMedicationsListListFirestoreData(
  List<MedicationsListStruct>? medicationsLists,
) =>
    medicationsLists
        ?.map((e) => getMedicationsListFirestoreData(e, true))
        .toList() ??
    [];
