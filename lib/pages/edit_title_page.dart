import 'package:brasileirao/repositories/team_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../models/title.dart' as t;

class EditTitlePage extends StatefulWidget {
  t.Title title;
  EditTitlePage({Key? key, required this.title}) : super(key: key);

  @override
  State<EditTitlePage> createState() => _EditTitlePageState();
}

class _EditTitlePageState extends State<EditTitlePage> {
  final _championship = TextEditingController();
  final _year = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _year.text = widget.title.year;
    _championship.text = widget.title.championship;
  }

  edit() {
    Provider.of<TeamsRepository>(context, listen: false).editTitle(
      title: widget.title,
      championship: _championship.text,
      year: _year.text,
    );

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Title'),
        backgroundColor: Colors.grey[800],
        actions: [IconButton(onPressed: edit, icon: const Icon(Icons.check))],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 24.0),
              child: TextFormField(
                controller: _championship,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Campeonato',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe o campeonato';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 24.0),
              child: TextFormField(
                controller: _year,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ano do título',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe o ano do título';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
