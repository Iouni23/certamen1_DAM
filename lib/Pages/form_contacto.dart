import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FormPage extends StatefulWidget {
  FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formKey = GlobalKey<FormState>();
  DateTime fechaSeleccionada = DateTime.now();
  String emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Form'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            children: [
              campoEmail(),
              campoEdad(),
              campoFecha(), //El campo fecha guateo al final y no solucione el error
              botonAceptar(),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField campoEdad() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Edad',
      ),
      keyboardType: TextInputType.numberWithOptions(),
      validator: (valor) {
        if (valor == null || valor.isEmpty) {
          return 'Indique su edad';
        }
        if (int.parse(valor) == 0) {
          return 'edad invalida';
        }

        return null;
      },
    );
  }

  TextFormField campoEmail() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (valor) {
        if (valor == null || valor.isEmpty) {
          return 'Indique su email';
        }
        if (!RegExp(emailRegex).hasMatch(valor)) {
          return 'Formato de email no válido';
        }
        return null;
      },
    );
  }

  Row campoFecha() {
    return Row(
      children: [
        Text('Fecha:', style: TextStyle(fontSize: 16)),
        Spacer(),
        TextButton(
          child: Icon(MdiIcons.calendar),
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1920),
              lastDate: DateTime.now(),
              locale: Locale('es', 'ES'),
            ).then((fecha) {
              setState(() {
                fechaSeleccionada = fecha ?? fechaSeleccionada;
              });
            });
          },
        ),
      ],
    );
  }

  Container botonAceptar() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Aceptar'),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            //form ok
            print('FORMULARIO OK');
          }
        },
      ),
    );
  }
}
