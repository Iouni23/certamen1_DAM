import 'package:flutter/material.dart';

class ServicioBox extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String descripcion;

  const ServicioBox({
    this.imagen = 'sendero.jpg',
    this.titulo = 'Sin título',
    this.descripcion = 'Sin descripcion',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/${this.imagen}'),
          ),
          Text(
            this.titulo,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$ ' + this.descripcion,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
