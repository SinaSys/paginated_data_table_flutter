import 'package:flutter/material.dart';
import 'package:paginated_data_table_flutter/model/student.dart';

class PaginatedDataTableDataSource extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    if (index == students.length -1) {
      return DataRow(
          cells: [
            const DataCell(Text("")),
            DataCell(finishedRow()),
            const DataCell(Text("")),

          ]);
    } else {
      return DataRow(cells: [
        DataCell(Text(students[index].id)),
        DataCell(Text(students[index].name)),
        DataCell(Text(students[index].avg)),
      ]);
    }
  }

  Widget finishedRow(){
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height:double.infinity ,
      color: Colors.yellow,
      child: const Text("Finished"),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => students.length;

  @override
  int get selectedRowCount => 0;
}
