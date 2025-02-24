import 'dart:convert'; // Para usar json.decode
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeMaterial extends StatefulWidget {
  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  // Função para pegar os dados da API
  Future<Map<String, dynamic>> fetchData() async {
    final response = await http.get(
      Uri.parse('https://api.hgbrasil.com/finance/quotations?key=046f079b'),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body); // Converte a resposta para Map
    } else {
      throw Exception('Falha ao carregar dados');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cotações de Moedas')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            var data =
                snapshot
                    .data!['results']['currencies']; // Acessando 'currencies'
            var moedas = data.keys.toList(); // Pegando as chaves (moedas)

            return ListView.builder(
              itemCount: moedas.length,
              itemBuilder: (context, index) {
                var moeda = moedas[index];
                var moedaData = data[moeda]; // Dados específicos da moeda
                return ListTile(
                  title: Text(moedaData['name']),
                  subtitle: Text(
                    'Compra: ${moedaData['buy']} - Venda: ${moedaData['sell']}',
                  ),
                  trailing: Text('Variação: ${moedaData['variation']}'),
                );
              },
            );
          }
          return Text('Sem dados');
        },
      ),
    );
  }
}
