///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'counter.pb.dart' as $0;
export 'counter.pb.dart';

class CounterServiceClient extends $grpc.Client {
  static final _$getCounterValue =
      $grpc.ClientMethod<$0.CounterRequest, $0.CounterResponse>(
          '/nobbb.CounterService/GetCounterValue',
          ($0.CounterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CounterResponse.fromBuffer(value));
  static final _$incrementCounter =
      $grpc.ClientMethod<$0.CounterRequest, $0.CounterResponse>(
          '/nobbb.CounterService/IncrementCounter',
          ($0.CounterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CounterResponse.fromBuffer(value));
  static final _$addToCounter =
      $grpc.ClientMethod<$0.CounterRequest, $0.CounterResponse>(
          '/nobbb.CounterService/AddToCounter',
          ($0.CounterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CounterResponse.fromBuffer(value));
  static final _$clearCounter =
      $grpc.ClientMethod<$0.CounterRequest, $0.CounterResponse>(
          '/nobbb.CounterService/ClearCounter',
          ($0.CounterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CounterResponse.fromBuffer(value));

  CounterServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CounterResponse> getCounterValue(
      $0.CounterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCounterValue, request, options: options);
  }

  $grpc.ResponseFuture<$0.CounterResponse> incrementCounter(
      $0.CounterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$incrementCounter, request, options: options);
  }

  $grpc.ResponseFuture<$0.CounterResponse> addToCounter(
      $0.CounterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addToCounter, request, options: options);
  }

  $grpc.ResponseFuture<$0.CounterResponse> clearCounter(
      $0.CounterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$clearCounter, request, options: options);
  }
}

abstract class CounterServiceBase extends $grpc.Service {
  $core.String get $name => 'nobbb.CounterService';

  CounterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CounterRequest, $0.CounterResponse>(
        'GetCounterValue',
        getCounterValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CounterRequest.fromBuffer(value),
        ($0.CounterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CounterRequest, $0.CounterResponse>(
        'IncrementCounter',
        incrementCounter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CounterRequest.fromBuffer(value),
        ($0.CounterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CounterRequest, $0.CounterResponse>(
        'AddToCounter',
        addToCounter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CounterRequest.fromBuffer(value),
        ($0.CounterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CounterRequest, $0.CounterResponse>(
        'ClearCounter',
        clearCounter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CounterRequest.fromBuffer(value),
        ($0.CounterResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CounterResponse> getCounterValue_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CounterRequest> request) async {
    return getCounterValue(call, await request);
  }

  $async.Future<$0.CounterResponse> incrementCounter_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CounterRequest> request) async {
    return incrementCounter(call, await request);
  }

  $async.Future<$0.CounterResponse> addToCounter_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CounterRequest> request) async {
    return addToCounter(call, await request);
  }

  $async.Future<$0.CounterResponse> clearCounter_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CounterRequest> request) async {
    return clearCounter(call, await request);
  }

  $async.Future<$0.CounterResponse> getCounterValue(
      $grpc.ServiceCall call, $0.CounterRequest request);
  $async.Future<$0.CounterResponse> incrementCounter(
      $grpc.ServiceCall call, $0.CounterRequest request);
  $async.Future<$0.CounterResponse> addToCounter(
      $grpc.ServiceCall call, $0.CounterRequest request);
  $async.Future<$0.CounterResponse> clearCounter(
      $grpc.ServiceCall call, $0.CounterRequest request);
}
