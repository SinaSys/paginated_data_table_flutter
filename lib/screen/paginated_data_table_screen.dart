import 'package:flutter/material.dart';

import '../model/data_provider.dart';

class PaginatedDataTableScreen extends StatelessWidget {
   PaginatedDataTableScreen({Key? key}) : super(key: key);


  final PaginatedDataTableDataSource dataSource = PaginatedDataTableDataSource();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children : [PaginatedDataTable(
          source: dataSource,
          header: const Text("Student list"),
          rowsPerPage: 15,
          columnSpacing: 100,
          horizontalMargin: 10,
          showCheckboxColumn: false,
          columns: const [
            DataColumn(label: Text("ID")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Average")),
          ],
        )],
      ),
    );
  }
}
