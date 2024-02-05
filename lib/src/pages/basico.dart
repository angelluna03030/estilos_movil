import 'package:flutter/material.dart';

class Basico extends StatelessWidget {
  final estiloTitulo = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(
    fontSize: 15,
    color: Colors.grey,
  );
  final _separacion = SizedBox(width: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
                
        children: <Widget>[
          _crearImagen(),
          _crearContenido(),
          _acciones(),
          _crearTexto(),
               _crearTexto(),
                
        ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child:const  Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/147411/italy-mountains-dawn-daybreak-147411.jpeg?cs=srgb&dl=pexels-pixabay-147411.jpg&fm=jpg')
              ,fit: BoxFit.fill,
              ),
    );
 
  }

  Widget _crearContenido() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Una casa en el lago",
                  style: estiloTitulo,
                ),
              const   SizedBox(height: 7.0),
                Text(
                  "una casa que se encunetra en un lago.",
                  style: estiloSubtitulo,
                ),
              ],
            ),
          ),
       const    Icon(Icons.star, color: Colors.red, size: 30.0),
       const    Text(
            '41',
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    );
  }

  Widget _acciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _separacion,
        _accion(Icons.near_me, 'ROUTE'),
        _separacion,
        _accion(Icons.share, "Share"),
      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
      const   SizedBox(height: 20),
        Text(text, style: const  TextStyle(fontSize: 15.0, color: Colors.blue)),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: const  EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
        child: const Text('Lorem ipsum dolor sit amet consectetur adipiscing elit class quam inceptos erat mauris ultricies laoreet ac, habitant potenti mollis metus egestas imperdiet leo platea placerat tempus cras tempor viverra. Arcu molestie dapibus eros mi fusce malesuada habitant, hendrerit mus litora ligula nec aliquam gravida sociis, ad varius ante donec ut justo. Congue commodo facilisi ultricies sodales est nulla primis, semper tempus volutpat in cursus rutrum risus, erat nibh taciti ornare eget etiam',
        textAlign: TextAlign.justify,
        )),
    );
  }
}
