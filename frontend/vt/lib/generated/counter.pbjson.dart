///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use counterRequestDescriptor instead')
const CounterRequest$json = const {
  '1': 'CounterRequest',
  '2': const [
    const {'1': 'numericalInput', '3': 1, '4': 1, '5': 9, '10': 'numericalInput'},
  ],
};

/// Descriptor for `CounterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List counterRequestDescriptor = $convert.base64Decode('Cg5Db3VudGVyUmVxdWVzdBImCg5udW1lcmljYWxJbnB1dBgBIAEoCVIObnVtZXJpY2FsSW5wdXQ=');
@$core.Deprecated('Use counterResponseDescriptor instead')
const CounterResponse$json = const {
  '1': 'CounterResponse',
  '2': const [
    const {'1': 'currentValue', '3': 1, '4': 1, '5': 5, '10': 'currentValue'},
  ],
};

/// Descriptor for `CounterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List counterResponseDescriptor = $convert.base64Decode('Cg9Db3VudGVyUmVzcG9uc2USIgoMY3VycmVudFZhbHVlGAEgASgFUgxjdXJyZW50VmFsdWU=');
