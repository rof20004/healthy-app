import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    this.conditionToVerify,
    required this.onPressed,
    required this.text,
  });

  final bool? conditionToVerify;
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
        (conditionToVerify ?? true)
            ? Theme.of(context).colorScheme.primary
            : Colors.grey,
      )),
      onPressed: (conditionToVerify ?? true) ? onPressed : () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: (conditionToVerify ?? true)
                        ? Theme.of(context).colorScheme.onPrimary
                        : Colors.grey.shade600,
                  )),
        ],
      ),
    );
  }
}
