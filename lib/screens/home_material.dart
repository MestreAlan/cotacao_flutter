import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeMaterial extends StatefulWidget {
  const HomeMaterial({super.key});

  @override
  State<HomeMaterial> createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  late Future<Map<String, dynamic>> dadosCotacoes;

  @override
  void initState() {
    super.initState();
    dadosCotacoes =
        fetchData(); // Usando a função fetchData para pegar os dados da API
  }

  Future<Map<String, dynamic>> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse('https://api.hgbrasil.com/finance?key=046f079b'),
      );

      if (response.statusCode != HttpStatus.ok) {
        throw 'Erro de conexão';
      }

      final data = json.decode(response.body)['results'];
      return data;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cotações Brasil',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder<Map<String, dynamic>>(
          future: dadosCotacoes,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Erro: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final data = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    destaqueMoeda(data),
                    const SizedBox(height: 20),
                    const Text(
                      'Outras Moedas',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    rowMoedas(data),
                    const SizedBox(height: 20),
                    const Text(
                      'Bolsa de Valores',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    rowBolsa(data),
                  ],
                ),
              );
            } else {
              return const Center(child: Text('Nenhum dado disponível.'));
            }
          },
        ),
      ),
    );
  }

  Widget destaqueMoeda(Map<String, dynamic> data) {
    var moeda = data['currencies']['USD'];
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            moeda['name'],
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'R\$${moeda['buy']}',
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'Variação: ${moeda['variation']}%',
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget rowMoedas(Map<String, dynamic> data) {
    List<Widget> moedas = [];

    data['currencies'].forEach((key, value) {
      if (key != 'source') {
        moedas.add(
          quadrado(value['name'], 'R\$${value['buy']}', value['variation']),
        );
      }
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: moedas.take(4).toList(),
    );
  }

  Widget rowBolsa(Map<String, dynamic> data) {
    List<Widget> acoes = [];

    data['stocks'].forEach((key, value) {
      acoes.add(quadrado(key, value['location'], value['variation']));
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: acoes.take(4).toList(),
    );
  }

  Widget quadrado(String titulo, String valor, dynamic variacao) {
    return Container(
      width: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titulo,
            style: const TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          Text(
            valor,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
          Text(
            'Var: $variacao%',
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
