import 'package:freezed_annotation/freezed_annotation.dart';

part 'cotacao.freezed.dart';
part 'cotacao.g.dart';

@freezed
class Cotacao with _$Cotacao {
  const factory Cotacao({
    required String? nome, // Permite valores nulos
    required String? valor, // Permite valores nulos
    required String? variacao, // Permite valores nulos
  }) = _Cotacao;

  factory Cotacao.fromJson(Map<String, dynamic> json) =>
      _$CotacaoFromJson(json); // Usando o gerador do freezed
}
