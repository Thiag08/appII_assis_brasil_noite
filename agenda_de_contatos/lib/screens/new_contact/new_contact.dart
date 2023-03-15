import 'package:agenda_de_contatos/screens/new_contact/components/custom_textformfield.dart';
import 'package:flutter/material.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  // Variáveis úteis
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo contato"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // Tudo OK
          }
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt),
                  iconSize: 100,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  label: "Nome",
                  controller: nameController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O campo deve ser preenchido!!!";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
