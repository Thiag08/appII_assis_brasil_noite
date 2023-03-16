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
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

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
                      return "O campo nome não pode ficar em branco";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  label: "Sobrenome",
                  controller: lastNameController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O sobrenome não pode ficar em branco";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  label: "Email",
                  controller: emailController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O email não pode ficar em branco";
                    } else if (value != null) {
                      return "O email informado é inválido";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  label: "Telefone",
                  controller: phoneController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O número de telefone não pode ficar em branco";
                    } else if (value != null && value.length != 18) {
                      return "O número de telefone é inválido";
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
