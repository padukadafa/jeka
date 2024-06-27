// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:jeka/common/widgets/avatar.dart';
// import 'package:jeka/common/widgets/reuseable_text.dart';
// import 'package:jeka/features/community/presentation/pages/discovery_bak/widgets/discovery_community_this_month.dart';
// import 'package:jeka/features/community/presentation/pages/discovery_bak/widgets/discovery_near_member.dart';
// import 'package:jeka/features/community/presentation/pages/discovery_bak/widgets/discovery_top_post.dart';
// import 'package:jeka/features/community/presentation/pages/discovery_bak/widgets/discovery_upcoming_event.dart';

// class DiscoveryPage extends StatelessWidget {
//   const DiscoveryPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const DiscoveryTopPosts(),
//             const DiscoveryCommunityThisMonth(),
//             const DiscoveryNearMember(),
//             const DiscoveryUpcomingEvent(),
//             const SizedBox(
//               height: 18,
//             ),
//             Column(
//               children: List.generate(6, (index) {
//                 return Container(
//                   margin: const EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 6,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Avatar(
//                                       size: 35,
//                                     // ),
//                                     SizedBox(
//                                       width: 12,
//                                     ),
//                                     ReuseableText("Velicia Lora"),
//                                   ],
//                                 ),
//                                 ReuseableText(
//                                   "Top destination in Lampung",
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                                 ReuseableText(
//                                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lectus mi, finibus ut nisl ut,",
//                                 ),
//                               ],
//                             ),
//                             ReuseableText("Mar 2,2024  • 4 min read"),
//                           ],
//                         ),
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           CachedNetworkImage(
//                             imageUrl:
//                                 "https://www.intiwhiz.com/img/lkiluan.jpg",
//                             imageBuilder: (context, imageProvider) {
//                               return Container(
//                                 height: 80,
//                                 width: 120,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: imageProvider,
//                                     fit: BoxFit.cover,
//                                   ),
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                               );
//                             },
//                           ),
//                           const SizedBox(
//                             height: 32,
//                           ),
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               FaIcon(
//                                 FontAwesomeIcons.bookmark,
//                                 size: 16,
//                               ),
//                               SizedBox(
//                                 width: 8,
//                               ),
//                               FaIcon(
//                                 FontAwesomeIcons.ellipsisVertical,
//                                 size: 16,
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               }).toList(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
