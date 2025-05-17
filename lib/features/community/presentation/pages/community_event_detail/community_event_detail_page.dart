import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

@RoutePage()
class CommunityEventDetailPage extends StatelessWidget {
  const CommunityEventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        appBar: ReuseableAppBar(
          context: context,
          showBackButton: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.calendar,
                            color: colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const ReuseableText("feb 03 || 3pm"),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const ReuseableText(
                          "Public",
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const ReuseableText(
                        "Focus Group Discussion",
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceBright,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: colorScheme.shadow,
                          ),
                        ),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.locationDot,
                              color: Colors.red[700],
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const ReuseableText("Google Meet"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceBright,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: colorScheme.shadow,
                          ),
                        ),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidFile,
                              color: Colors.blue[700],
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const ReuseableText("Attachment"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const SizedBox(
                        width: double.maxFinite,
                        child: ReuseableText("""
                      
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut nibh pharetra, ultricies libero ut, sagittis felis. Ut tortor nibh, volutpat vel ipsum venenatis, pretium dictum dolor. Nulla porttitor mollis ligula quis ultricies. Sed ultrices fringilla tincidunt. In suscipit est urna, nec pretium odio interdum vitae. Fusce consectetur diam vel lectus interdum, a rhoncus mi rhoncus. Ut tempus mi eros, eu efficitur libero aliquet nec. Nullam aliquam massa sed ligula cursus tempor.

Maecenas id tincidunt nisl. Aliquam eget faucibus purus. In a finibus ante. Etiam vel sollicitudin metus. In euismod elit ac maximus laoreet. Mauris gravida erat sed augue ornare ultricies a nec orci. Praesent hendrerit, ante sit amet volutpat vehicula, augue nulla vehicula nisi, nec fringilla nulla dolor eu arcu. Morbi bibendum velit sed sapien molestie, sed consectetur nunc euismod. Proin aliquet ante dolor, nec maximus diam tempus eget. Maecenas fringilla, nibh eget aliquam tempor, urna risus vehicula ante, viverra sodales felis mi non erat. Cras lacinia erat ac massa sodales faucibus. Nunc vitae lectus ornare, tincidunt massa id, gravida est. Vestibulum a ex id dolor tempor faucibus. Praesent mi felis, auctor ac nulla nec, tincidunt ullamcorper massa. Curabitur pellentesque lacus a nunc scelerisque, in ullamcorper mauris elementum.

Morbi molestie ante at consectetur finibus. Sed volutpat ac sem id facilisis. Phasellus pulvinar arcu orci, ut faucibus purus maximus quis. Nulla consectetur tortor nulla, sed feugiat risus dapibus ut. Aliquam a mauris et lacus tempus vulputate. Aliquam auctor semper dolor, quis gravida ligula mollis volutpat. Suspendisse nec risus libero. Aliquam vestibulum efficitur libero, id molestie neque blandit non. Sed vitae metus eu orci consectetur imperdiet. Aliquam erat volutpat. Duis consequat eros libero, et porttitor risus mollis ut. Nunc vel feugiat arcu, vel ultricies augue. Aenean at tortor eros. Maecenas fringilla orci bibendum malesuada lacinia.

Donec vitae vehicula elit, eget finibus est. Donec hendrerit, dui eu dignissim suscipit, mi justo dignissim ante, non porttitor nisl metus quis sem. Vivamus at urna euismod, commodo ex sed, ullamcorper dolor. Quisque at tortor in augue rutrum commodo quis non sapien. Suspendisse ullamcorper mollis augue ut varius. Cras posuere rhoncus odio eu molestie. Aliquam eget leo interdum, sagittis quam consectetur, ultrices ligula. Praesent id rutrum purus. Nulla fermentum est ultrices, pellentesque metus non, porttitor lectus. Proin nec convallis nisl.

Cras at dui placerat, accumsan turpis ac, varius justo. Aliquam erat volutpat. Maecenas vel dignissim justo. Donec lorem sapien, mattis id euismod quis, tristique at metus. Etiam vel tortor bibendum, suscipit turpis ut, pellentesque ipsum. Nunc efficitur auctor nunc vitae iaculis. Cras condimentum egestas leo quis interdum. Proin vel posuere sem. Donec blandit mi erat. Sed luctus eu dolor nec fringilla. Maecenas eleifend ante sit amet semper euismod. Ut suscipit, dui eget pharetra finibus, risus leo faucibus justo, ac euismod mauris velit ut nunc. Nam vitae feugiat ligula, eget blandit velit. Mauris semper lacus vel lorem lacinia, eu viverra erat semper.


                      """),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow,
                    offset: const Offset(0, -2),
                    blurRadius: 2,
                  ),
                ],
                color: colorScheme.surfaceBright,
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Attend"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
