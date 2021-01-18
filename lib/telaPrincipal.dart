import 'package:flutter/material.dart';
import 'package:repceitas_app/detailsPage.dart';
import 'package:repceitas_app/main.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7d0633),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 125.0,
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          //ICONE
                          icon: Icon(Icons.exit_to_app), //icone de sair
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WidgetLogin()),
                            );
                          },
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 30.0), //DEFINIR AS ESCRITAS
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Repceitas',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0)),
                SizedBox(width: 10.0),
                Text('para republicas',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 18.0))
              ],
            ),
          ),
          SizedBox(height: 40.0), //AREA BRANCA
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _buildFoodItem(
                              'assets/plate1.png',
                              'Macarrão',
                              '- 1/2 pacote de macarrão \n- 3 tomates\n- 1 cebola pequena picada\n- 1 colher de extrato de tomate',
                              'Coloque o macarrão em uma panela\ne cozinhe, coloque 1 colher de azeite,\n acrescente os tomates e mexa até que\n eles soltem água, depois disso,\n acrescente 1 colher de extrato de tomate.  '),
                          _buildFoodItem(
                              'assets/plate2.png',
                              'Feijão',
                              '- 1 xícara (chá) de feijão\n- 4 xícaras (chá) de água (800 ml)\n- 1 colher (chá) de sal\n- 1 folha de louro\n- 1 colher (sopa) de óleo\n- 2 dentes de alho amassados',
                              'Deixe o feijão de molho por 2 horas.\n Escorra e transfira para uma panela de\n pressão. Junte a água, o tempero pronto,\n o sal e o louro. Deixe cozinhar, em fogo\n baixo, por 20 minutos.'),
                          _buildFoodItem(
                              'assets/plate6.png',
                              'Arroz',
                              '- 1 xícara de arroz lavado\n- 2 xícaras de água fervente\n- 1 dente de alho amassado\n- 1/4 de cebola picada\n- azeite o suficiente\n- sal a gosto',
                              'Refogue o alho e a cebola no azeite.\nDeixe fritar por cerca de 30 segundos.\nAdicione a água fervente e o sal.\nDeixe cozinhar até a água quase secar\nAguarde cerca de 20 minutos\n'),
                          _buildFoodItem(
                              'assets/plate5.png',
                              'Salada de maionese',
                              '- 4 batatas médias\n- 3 cenouras médias\n- 100 g de vagens\n- 3 maçãs\n- 1 lata de ervilha\n- 250 g de maionese',
                              'Pique a cenoura, batata e vagem\nEspere esfriar coloque em uma travessa.\nPor último a maionese\nSirva gelada.')
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(
      String imgPath, String foodName, String receita, String foodPreparo) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        heroTag: imgPath,
                        foodName: foodName,
                        foodReceita: receita,
                        foodPreparo: foodPreparo,
                      )));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 75.0,
                          width: 75.0)),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold)),
                      ]),
                ])),
              ],
            )));
  }
}
