import 'package:grpc/grpc.dart';
// import 'package:flutter/material.dart';
// import 'package:vt/generated/counter.pb.dart';
import 'package:vt/generated/counter.pbgrpc.dart';

class CounterClient {
  late ClientChannel channel;
  late CounterServiceClient stub;

  CounterClient() {
    channel = ClientChannel(
      'localhost',
      port: 50051,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    stub = CounterServiceClient(channel);
  }

  Future<void> fetchData() async {
    final request = CounterRequest();
    try {
      final response = await stub.getCounterValue(request);
      print('Received response: ${response.currentValue}');
    } catch (error) {
      print('Error: $error');
    }
  }

  void close() {
    channel.shutdown();
  }
}

