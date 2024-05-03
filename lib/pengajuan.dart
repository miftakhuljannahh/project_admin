import 'package:flutter/material.dart';
import 'package:project_admin/people.dart';

class PengajuanCuti extends StatefulWidget {
  const PengajuanCuti({Key? key}) : super(key: key);

  @override
  State<PengajuanCuti> createState() => _PengajuanCutiState();
}

class _PengajuanCutiState extends State<PengajuanCuti> {
  List<People> people = [
    People(name: 'Miftakhul Jannah', date: '14-02-2023', alasan: 'MEnikah'),
    People(name: 'budi', date: '28-02-2023', alasan: 'MEnikah'),
    People(name: 'budi', date: '01-02-2023', alasan: 'MEnikah'),
    People(name: 'budi', date: '16-02-2023', alasan: 'MEnikah'),
    People(name: 'budi', date: '25-02-2023', alasan: 'MEnikah'),
    People(name: 'budi', date: '19-02-2023', alasan: 'MEnikah'),
    People(name: 'budi', date: '22-02-2023', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
    People(name: 'budi', date: '17-02-2024', alasan: 'MEnikah'),
  ];
  final TextEditingController searchController = TextEditingController();
  bool isSearchClicked = false;
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: isSearchClicked
            ? Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {
                      searchText = value;
                    });
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 8, 16, 12),
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    hintText: "Search Here",
                  ),
                ),
              )
            : const Text(
                "Data Karyawan",
                style: TextStyle(color: Colors.white),
              ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearchClicked = !isSearchClicked;
                if (!isSearchClicked) {
                  searchController.clear();
                  searchText = '';
                }
              });
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DataTable(
              headingRowColor: MaterialStateColor.resolveWith(
                  (states) => const Color.fromARGB(255, 125, 189, 240)),
              columnSpacing: 20,
              columns: [
                DataColumn(
                  label: Text('Nama'),
                ),
                DataColumn(
                  label: Text('Tanggal Diajukan'),
                ),
                DataColumn(
                  label: Text('Alasan'),
                )
              ],
              rows: people
                  .where((person) => person.date!
                      .toLowerCase()
                      .contains(searchText.toLowerCase()))
                  .map((person) => DataRow(cells: [
                        DataCell(
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Detail Karyawan'),
                                    content: Text(
                                        'Nama: nadila\nTanggal Diajukan: 15-03-2023\ntanggal selesai: 17-03-2023\nmulai masuk: 18-03-2023 \nlama hari:3 hari\nAlasan: halangan'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('setujui'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('tolak'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(person.name ?? ''),
                          ),
                        ),
                        DataCell(Text(person.date ?? '')),
                        DataCell(Text(person.alasan.toString())),
                      ]))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
