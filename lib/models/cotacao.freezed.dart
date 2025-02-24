// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cotacao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Cotacao _$CotacaoFromJson(Map<String, dynamic> json) {
  return _Cotacao.fromJson(json);
}

/// @nodoc
mixin _$Cotacao {
  String? get nome =>
      throw _privateConstructorUsedError; // Permite valores nulos
  String? get valor =>
      throw _privateConstructorUsedError; // Permite valores nulos
  String? get variacao => throw _privateConstructorUsedError;

  /// Serializes this Cotacao to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cotacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CotacaoCopyWith<Cotacao> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CotacaoCopyWith<$Res> {
  factory $CotacaoCopyWith(Cotacao value, $Res Function(Cotacao) then) =
      _$CotacaoCopyWithImpl<$Res, Cotacao>;
  @useResult
  $Res call({String? nome, String? valor, String? variacao});
}

/// @nodoc
class _$CotacaoCopyWithImpl<$Res, $Val extends Cotacao>
    implements $CotacaoCopyWith<$Res> {
  _$CotacaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cotacao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = freezed,
    Object? valor = freezed,
    Object? variacao = freezed,
  }) {
    return _then(
      _value.copyWith(
            nome:
                freezed == nome
                    ? _value.nome
                    : nome // ignore: cast_nullable_to_non_nullable
                        as String?,
            valor:
                freezed == valor
                    ? _value.valor
                    : valor // ignore: cast_nullable_to_non_nullable
                        as String?,
            variacao:
                freezed == variacao
                    ? _value.variacao
                    : variacao // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CotacaoImplCopyWith<$Res> implements $CotacaoCopyWith<$Res> {
  factory _$$CotacaoImplCopyWith(
    _$CotacaoImpl value,
    $Res Function(_$CotacaoImpl) then,
  ) = __$$CotacaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nome, String? valor, String? variacao});
}

/// @nodoc
class __$$CotacaoImplCopyWithImpl<$Res>
    extends _$CotacaoCopyWithImpl<$Res, _$CotacaoImpl>
    implements _$$CotacaoImplCopyWith<$Res> {
  __$$CotacaoImplCopyWithImpl(
    _$CotacaoImpl _value,
    $Res Function(_$CotacaoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Cotacao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = freezed,
    Object? valor = freezed,
    Object? variacao = freezed,
  }) {
    return _then(
      _$CotacaoImpl(
        nome:
            freezed == nome
                ? _value.nome
                : nome // ignore: cast_nullable_to_non_nullable
                    as String?,
        valor:
            freezed == valor
                ? _value.valor
                : valor // ignore: cast_nullable_to_non_nullable
                    as String?,
        variacao:
            freezed == variacao
                ? _value.variacao
                : variacao // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CotacaoImpl implements _Cotacao {
  const _$CotacaoImpl({
    required this.nome,
    required this.valor,
    required this.variacao,
  });

  factory _$CotacaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CotacaoImplFromJson(json);

  @override
  final String? nome;
  // Permite valores nulos
  @override
  final String? valor;
  // Permite valores nulos
  @override
  final String? variacao;

  @override
  String toString() {
    return 'Cotacao(nome: $nome, valor: $valor, variacao: $variacao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CotacaoImpl &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.variacao, variacao) ||
                other.variacao == variacao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nome, valor, variacao);

  /// Create a copy of Cotacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CotacaoImplCopyWith<_$CotacaoImpl> get copyWith =>
      __$$CotacaoImplCopyWithImpl<_$CotacaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CotacaoImplToJson(this);
  }
}

abstract class _Cotacao implements Cotacao {
  const factory _Cotacao({
    required final String? nome,
    required final String? valor,
    required final String? variacao,
  }) = _$CotacaoImpl;

  factory _Cotacao.fromJson(Map<String, dynamic> json) = _$CotacaoImpl.fromJson;

  @override
  String? get nome; // Permite valores nulos
  @override
  String? get valor; // Permite valores nulos
  @override
  String? get variacao;

  /// Create a copy of Cotacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CotacaoImplCopyWith<_$CotacaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
