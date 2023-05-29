import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
//import 'package:vt/generated/counter.pb.dart';
import 'package:vt/generated/counter.pbgrpc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variables
  int currentValue = 0;
  String numericalInput = '';

  // gRPC Client
  CounterServiceClient? client;
  ClientChannel? channel;

  @override
  void initState() {
    super.initState();
    channel = ClientChannel(
      'localhost',
      port: 5275,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    client = CounterServiceClient(channel!);
  }

  @override
  void dispose() {
    channel?.terminate();
    super.dispose();
  }

   void addToCounter(int value) async {
    final request = CounterRequest()..numericalInput = numericalInput;
    try {
      final response = await client!.addToCounter(request);
      setState(() {
        currentValue = response.currentValue;
      });
    } catch (error) {
      print('Error: $error');
    }
  }


  void clearCounter() async {
    final request = CounterRequest();
    try {
      await client!.clearCounter(request);
      setState(() {
        currentValue = 0;
        numericalInput = '';
      });
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display Box
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Center(
                child: Text(
                  currentValue.toString(), // Display the current value
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(height: 16), // Spacer

            // Add Button
            ElevatedButton(
              onPressed: () => addToCounter(1),
              child: const Text('Add +1'),
            ),
            const SizedBox(height: 16), // Spacer

            // Text Box
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter a number',
              ),
              onChanged: (value) {
                // Handle text box input change
                setState(() {
                  numericalInput = value; // Update the numerical input variable
                });
              },
            ),
            const SizedBox(height: 16), // Spacer

            // Add Numerical Input Button
            ElevatedButton(
              onPressed: () {
                // Handle add numerical input button press
                if (numericalInput.isNotEmpty) {
                  final int parsedValue = int.tryParse(numericalInput) ?? 0;
                  addToCounter(parsedValue);
                }
              },
              child: const Text('Add Numerical Input'),
            ),
            const SizedBox(height: 16), // Spacer

            // Clear Button
            ElevatedButton(
              onPressed: () => clearCounter(),
              child: const Text('Clear All'),
            ),
          ],
        ),
      ),
    );
  }
}

