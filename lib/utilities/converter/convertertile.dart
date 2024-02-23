import 'package:flutter/material.dart';

class ConverterTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  ConverterTile({super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: TextButton(
          onPressed: onPressed,
          child: Column(
            children: [
              Icon(icon,
                color: Colors.blueAccent,
                size: MediaQuery.of(context).size.width*0.1,
              ),
              const SizedBox(height: 5,),
              Text(text,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: MediaQuery.of(context).size.width*0.04
                  ),
              ),
            ],
          )
          )
      ),
    );
  }
}