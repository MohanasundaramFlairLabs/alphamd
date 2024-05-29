// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FileListStruct extends FFFirebaseStruct {
  FileListStruct({
    String? fileName,
    DateTime? flieUploadedDate,
    int? fileCount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fileName = fileName,
        _flieUploadedDate = flieUploadedDate,
        _fileCount = fileCount,
        super(firestoreUtilData);

  // "file_name" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  set fileName(String? val) => _fileName = val;
  bool hasFileName() => _fileName != null;

  // "flie_uploaded_date" field.
  DateTime? _flieUploadedDate;
  DateTime? get flieUploadedDate => _flieUploadedDate;
  set flieUploadedDate(DateTime? val) => _flieUploadedDate = val;
  bool hasFlieUploadedDate() => _flieUploadedDate != null;

  // "file_count" field.
  int? _fileCount;
  int get fileCount => _fileCount ?? 0;
  set fileCount(int? val) => _fileCount = val;
  void incrementFileCount(int amount) => _fileCount = fileCount + amount;
  bool hasFileCount() => _fileCount != null;

  static FileListStruct fromMap(Map<String, dynamic> data) => FileListStruct(
        fileName: data['file_name'] as String?,
        flieUploadedDate: data['flie_uploaded_date'] as DateTime?,
        fileCount: castToType<int>(data['file_count']),
      );

  static FileListStruct? maybeFromMap(dynamic data) =>
      data is Map ? FileListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'file_name': _fileName,
        'flie_uploaded_date': _flieUploadedDate,
        'file_count': _fileCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'file_name': serializeParam(
          _fileName,
          ParamType.String,
        ),
        'flie_uploaded_date': serializeParam(
          _flieUploadedDate,
          ParamType.DateTime,
        ),
        'file_count': serializeParam(
          _fileCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static FileListStruct fromSerializableMap(Map<String, dynamic> data) =>
      FileListStruct(
        fileName: deserializeParam(
          data['file_name'],
          ParamType.String,
          false,
        ),
        flieUploadedDate: deserializeParam(
          data['flie_uploaded_date'],
          ParamType.DateTime,
          false,
        ),
        fileCount: deserializeParam(
          data['file_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FileListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FileListStruct &&
        fileName == other.fileName &&
        flieUploadedDate == other.flieUploadedDate &&
        fileCount == other.fileCount;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fileName, flieUploadedDate, fileCount]);
}

FileListStruct createFileListStruct({
  String? fileName,
  DateTime? flieUploadedDate,
  int? fileCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FileListStruct(
      fileName: fileName,
      flieUploadedDate: flieUploadedDate,
      fileCount: fileCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FileListStruct? updateFileListStruct(
  FileListStruct? fileList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fileList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFileListStructData(
  Map<String, dynamic> firestoreData,
  FileListStruct? fileList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fileList == null) {
    return;
  }
  if (fileList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fileList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fileListData = getFileListFirestoreData(fileList, forFieldValue);
  final nestedData = fileListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fileList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFileListFirestoreData(
  FileListStruct? fileList, [
  bool forFieldValue = false,
]) {
  if (fileList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fileList.toMap());

  // Add any Firestore field values
  fileList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFileListListFirestoreData(
  List<FileListStruct>? fileLists,
) =>
    fileLists?.map((e) => getFileListFirestoreData(e, true)).toList() ?? [];
