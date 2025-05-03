import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // For gradients

class NfcbizumScreen extends StatelessWidget {
  const NfcbizumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          'Bizum',
          style: TextStyle(color: CupertinoColors.white),
        ),
        backgroundColor: CupertinoColors.black,
      ),
      child: SafeArea(
        child: DefaultTextStyle(
          style: const TextStyle(
            color: CupertinoColors.white,
            fontSize: 18,
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Enabling closer than ever payments'),
                const SizedBox(height: 24),
                const Spacer(),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //Send money
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF00C6FF), Color(0xFF0072FF)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Send Money',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Icon(
                      CupertinoIcons.arrow_up_arrow_down,
                      size: 40,
                      color: Color(0xFFFFFFFF),
                    ),
                    const SizedBox(height: 30),
                    // Gradient Receive Button
                    GestureDetector(
                      onTap: () {
                        //Receive money
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF1326FD), Color(0xFFFFFFFF)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Receive Money',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
