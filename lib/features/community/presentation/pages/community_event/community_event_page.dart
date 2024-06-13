import 'package:flutter/material.dart';
import 'package:jeka/features/community/presentation/pages/community_event/widgets/community_event_item.dart';

class CommunityEventPage extends StatelessWidget {
  const CommunityEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Column(
            children: [
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () {
              //           context.router.push(const CommunityCreateEventRoute());
              //         },
              //         child: const Text("Create Event"),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 16,
              //     ),
              //     Container(
              //       padding: const EdgeInsets.symmetric(horizontal: 14),
              //       decoration: BoxDecoration(
              //         color: colorScheme.surfaceBright,
              //         borderRadius: BorderRadius.circular(4),
              //         boxShadow: [
              //           BoxShadow(
              //             color: colorScheme.shadow,
              //             blurRadius: 2,
              //           ),
              //         ],
              //       ),
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           const FaIcon(
              //             FontAwesomeIcons.filter,
              //             color: Colors.grey,
              //             size: 18,
              //           ),
              //           const SizedBox(
              //             width: 16,
              //           ),
              //           DropdownButton(
              //             items: const [
              //               DropdownMenuItem(
              //                 value: "",
              //                 child: Text("All"),
              //               ),
              //               DropdownMenuItem(
              //                 value: "",
              //                 child: Text("All"),
              //               ),
              //             ],
              //             underline: const SizedBox(),
              //             onChanged: (val) {},
              //           ),
              //         ],
              //       ),
              //     )
              //   ],
              // ),
              Column(
                children: List.generate(
                  4,
                  (index) {
                    return const CommunityEventItem();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
