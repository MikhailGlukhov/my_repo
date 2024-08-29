import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsSwitch extends StatelessWidget {
  const SettingsSwitch({
    super.key,
    required this.onChanged,
    required this.value,
    required this.title,
  });
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color.fromARGB(82, 0, 0, 0))),
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      height: 45,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          CupertinoSwitch(value: value, onChanged: onChanged)
        ],
      ),
    );
  }
}
