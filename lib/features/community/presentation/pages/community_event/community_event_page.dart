import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommunityEventPage extends StatelessWidget {
  const CommunityEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Create Event"),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceBright,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.shadow,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.filter,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        DropdownButton(
                          items: [
                            DropdownMenuItem(
                              child: Text("All"),
                              value: "",
                            ),
                            DropdownMenuItem(
                              child: Text("All"),
                              value: "",
                            ),
                          ],
                          underline: const SizedBox(),
                          onChanged: (val) {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
