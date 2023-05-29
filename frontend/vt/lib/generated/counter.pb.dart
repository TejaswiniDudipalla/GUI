///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CounterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nobbb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numericalInput', protoName: 'numericalInput')
    ..hasRequiredFields = false
  ;

  CounterRequest._() : super();
  factory CounterRequest({
    $core.String? numericalInput,
  }) {
    final _result = create();
    if (numericalInput != null) {
      _result.numericalInput = numericalInput;
    }
    return _result;
  }
  factory CounterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterRequest clone() => CounterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterRequest copyWith(void Function(CounterRequest) updates) => super.copyWith((message) => updates(message as CounterRequest)) as CounterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterRequest create() => CounterRequest._();
  CounterRequest createEmptyInstance() => create();
  static $pb.PbList<CounterRequest> createRepeated() => $pb.PbList<CounterRequest>();
  @$core.pragma('dart2js:noInline')
  static CounterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterRequest>(create);
  static CounterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get numericalInput => $_getSZ(0);
  @$pb.TagNumber(1)
  set numericalInput($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumericalInput() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumericalInput() => clearField(1);
}

class CounterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nobbb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentValue', $pb.PbFieldType.O3, protoName: 'currentValue')
    ..hasRequiredFields = false
  ;

  CounterResponse._() : super();
  factory CounterResponse({
    $core.int? currentValue,
  }) {
    final _result = create();
    if (currentValue != null) {
      _result.currentValue = currentValue;
    }
    return _result;
  }
  factory CounterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterResponse clone() => CounterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterResponse copyWith(void Function(CounterResponse) updates) => super.copyWith((message) => updates(message as CounterResponse)) as CounterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterResponse create() => CounterResponse._();
  CounterResponse createEmptyInstance() => create();
  static $pb.PbList<CounterResponse> createRepeated() => $pb.PbList<CounterResponse>();
  @$core.pragma('dart2js:noInline')
  static CounterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterResponse>(create);
  static CounterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get currentValue => $_getIZ(0);
  @$pb.TagNumber(1)
  set currentValue($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrentValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentValue() => clearField(1);
}

