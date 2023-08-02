import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inputName(),
              const SizedBox(height: 16),
              inputCorreo(),
              const SizedBox(height: 16),
              botonEnviar(context),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton botonEnviar(BuildContext context) {
    return ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Aquí podrías hacer algo con los datos ingresados, como enviarlos a un servidor
                  // o mostrarlos en otra pantalla
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Formulario enviado: Nombre: $_name, Correo: $_email')),
                  );
                }
              },
              child: const Text('Enviar'),
            );
  }

  TextFormField inputCorreo() {
    return TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                hintText: 'Correo Electrónico',
                labelText: 'Correo Electrónico',
                helperText: 'Correo de Contacto',
                suffixIcon: const Icon(Icons.alternate_email),
                icon: const Icon(Icons.email)
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, ingresa tu correo electrónico';
                } else if (!value.contains('@')) {
                  return 'Ingresa un correo electrónico válido';
                }
                return null;
              },
              onSaved: (value) {
                _email = value!;
              },
            );
  }

  TextFormField inputName() {
    return TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                counter: Text('Letras ${_name.length}'),
                hintText: 'Ingresa tu Nombre',
                labelText: 'Nombre',
                helperText: 'Nombre para Identificarte',
                suffixIcon: const Icon(Icons.accessibility),
                icon: const Icon(Icons.account_circle)
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, ingresa tu nombre';
                }
                return null;
              },
              onSaved: (value) {
                _name = value!;
              },
            );
  }
}