import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:latihan5/toko.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    final dataKeranjang = data['dataKeranjang'] as List<Keranjang>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Out'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text('Daftar Produk'),
              DataTable(
                  columns: [
                    DataColumn(
                      label: Text('Produk'),
                    ),
                    DataColumn(label: Text('Qty'), numeric: true),
                    DataColumn(label: Text('Sub Total'), numeric: true),
                  ],
                  rows: (dataKeranjang.map((e) {
                        return DataRow(cells: [
                          DataCell(
                            Text(e.produk.nama),
                          ),
                          DataCell(
                            Text(e.jumlah.toString()),
                          ),
                          DataCell(
                            Text(e.subTotal.toString()),
                          ),
                        ]);
                      }).toList()) +
                      [
                        DataRow(cells: [
                          DataCell(Text('')),
                          DataCell(Text('Total')),
                          DataCell(Text(dataKeranjang
                              .fold<double>(0, (pv, el) => pv + el.subTotal)
                              .toString())),
                        ])
                      ])
            ],
          )),
        ),
      ),
    );
  }
}
