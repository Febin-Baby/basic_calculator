import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int a = 0;
  int b = 0;
  num c = 0;
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  @override
  void initState() {
    super.initState();
    first.text = a.toString();
    second.text = b.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          textField('Enter first number', first),
          const SizedBox(height: 20),
          textField('Enter second number', second),
          Text(
            c.toString(),
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      c = num.tryParse(first.text)! +
                          num.tryParse(second.text)!;
                      debugPrint(c.toString());
                    });
                  },
                  child: const Icon(Icons.add)),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      c = num.tryParse(first.text)! -
                          num.tryParse(second.text)!;
                      debugPrint(c.toString());
                    });
                  },
                  child: const Icon(Icons.remove)),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      c = num.tryParse(first.text)! *
                          num.tryParse(second.text)!;
                      debugPrint(c.toString());
                    });
                  },
                  child: const Icon(CupertinoIcons.multiply)),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      c = num.tryParse(first.text)! /
                          num.tryParse(second.text)!;
                      debugPrint(c.toString());
                    });
                  },
                  child: const Icon(CupertinoIcons.divide)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  a = 0;
                  b = 0;
                  c = 0;
                  first.clear();
                  second.clear();
                });
              },
              label: const Text('Clear'))
        ],
      ),
    );
  }

  TextField textField(String hintText, TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
