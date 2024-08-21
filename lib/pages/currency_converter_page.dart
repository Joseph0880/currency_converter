import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(114, 153, 177, 1),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '0',
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    hintText: 'Please enter the amount in INR',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                if (kDebugMode) {
                  print("button clicked");
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              child: const Text('Convert'),
            ),
          )
        ],
      )),
    );
  }
}
