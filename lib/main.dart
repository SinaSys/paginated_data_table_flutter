import 'package:flutter/material.dart';
import 'package:paginated_data_table_flutter/screen/paginated_data_table_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: PaginatedDataTableScreen(),
    );
  }
}
