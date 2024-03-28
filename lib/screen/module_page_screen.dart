import 'package:flutter/material.dart';
import 'package:latihan_state_management/list/done_module_list.dart';
import 'package:latihan_state_management/list/module_list.dart';

class ModulePage extends StatelessWidget {
  const ModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemerograman dengan Dart'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DoneModuleList();
              }));
            },
            icon: const Icon(Icons.done),
          ),
        ],
      ),
      body: const ModuleList(),
    );
  }
}
