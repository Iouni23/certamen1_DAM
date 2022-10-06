import 'package:certamen1_2022/Pages/form_contacto.dart';
import 'package:flutter/material.dart';

class ServiciosPage extends StatefulWidget {
  ServiciosPage({Key? key}) : super(key: key);

  @override
  State<ServiciosPage> createState() => _ServiciosPageState();
}

class _ServiciosPageState extends State<ServiciosPage> {
  bool _isFavorited = false;
  int _favoriteCount = 0;
  bool _isFavorited2 = false;
  int _favoriteCount2 = 0;
  bool _isFavorited3 = false;
  int _favoriteCount3 = 0;
  bool _isFavorited4 = false;
  int _favoriteCount4 = 0;
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount++;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  void _toggleFavorite2() {
    setState(() {
      if (_isFavorited2) {
        _favoriteCount2++;
      } else {
        _favoriteCount2 += 1;
        _isFavorited2 = true;
      }
    });
  }

  void _toggleFavorite3() {
    setState(() {
      if (_isFavorited3) {
        _favoriteCount3++;
      } else {
        _favoriteCount3 += 1;
        _isFavorited3 = true;
      }
    });
  }

  void _toggleFavorite4() {
    setState(() {
      if (_isFavorited4) {
        _favoriteCount4++;
      } else {
        _favoriteCount4 += 1;
        _isFavorited4 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.travel_explore,
            size: 40,
            color: Colors.white,
          ),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text(
          'C1 DAM020-2022-2”',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFFF9900),
        centerTitle: true,
        bottom: PreferredSize(
          child: Text(
            'Johnny Huaraca',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          preferredSize: Size.zero,
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: Color(0xFF336666),
            width: double.infinity,
            height: 40,
            padding: EdgeInsets.all(5),
            child: ElevatedButton(
              child: Text(
                'Servicios que ofrecemos en Pucon:',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FormPage()));
              },
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: 800,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/senderos.jpg'),
                            ),
                          ),
                        ),
                        ListTile(
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.all(0),
                                child: IconButton(
                                  icon: (_isFavorited
                                      ? Icon(Icons.star)
                                      : Icon(Icons.star_border)),
                                  color: (_favoriteCount >= 20
                                      ? Colors.green[500]
                                      : (_favoriteCount >= 10
                                          ? Colors.yellow[500]
                                          : Colors.red[500])),
                                  onPressed: _toggleFavorite,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                                child: Container(
                                  child: Text('$_favoriteCount'),
                                ),
                              ),
                            ],
                          ),
                          title: Text('Senderos Naturales y Atractivos',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Row(
                            children: [
                              Text(
                                'Fecha: 24/12/12',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                ' 30.000CLP',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Column(
                  children: [
                    Container(
                      height: 250,
                      width: 800,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/termas.jpg'),
                        ),
                      ),
                    ),
                    ListTile(
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                              icon: (_isFavorited2
                                  ? Icon(Icons.star)
                                  : Icon(Icons.star_border)),
                              color: (_favoriteCount2 >= 20
                                  ? Colors.green[500]
                                  : (_favoriteCount2 >= 10
                                      ? Colors.yellow[500]
                                      : Colors.red[500])),
                              onPressed: _toggleFavorite2,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                            child: Container(
                              child: Text('$_favoriteCount2'),
                            ),
                          ),
                        ],
                      ),
                      title: Text('Centros Termales',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Row(
                        children: [
                          Text(
                            'Fecha: 23/12/12',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            ' 15.000CLP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
                Column(
                  children: [
                    Container(
                      height: 250,
                      width: 800,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/pesca.jpg'),
                        ),
                      ),
                    ),
                    ListTile(
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                              icon: (_isFavorited3
                                  ? Icon(Icons.star)
                                  : Icon(Icons.star_border)),
                              color: (_favoriteCount3 >= 20
                                  ? Colors.green[500]
                                  : (_favoriteCount3 >= 10
                                      ? Colors.yellow[500]
                                      : Colors.red[500])),
                              onPressed: _toggleFavorite3,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                            child: Container(
                              child: Text('$_favoriteCount3'),
                            ),
                          ),
                        ],
                      ),
                      title: Text('Pesca Deportiva',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Row(
                        children: [
                          Text(
                            'Fecha: 20/12/12',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            ' 10.000CLP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
                Column(
                  children: [
                    Container(
                      height: 250,
                      width: 800,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/turismo.jpg'),
                        ),
                      ),
                    ),
                    ListTile(
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                              icon: (_isFavorited4
                                  ? Icon(Icons.star)
                                  : Icon(Icons.star_border)),
                              color: (_favoriteCount4 >= 20
                                  ? Colors.green[500]
                                  : (_favoriteCount4 >= 10
                                      ? Colors.yellow[500]
                                      : Colors.red[500])),
                              onPressed: _toggleFavorite4,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                            child: Container(
                              child: Text('$_favoriteCount4'),
                            ),
                          ),
                        ],
                      ),
                      title: Text('Turismo Rural y Mapuche',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Row(
                        children: [
                          Text(
                            'Fecha: 21/12/12',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            ' 25.000CLP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
