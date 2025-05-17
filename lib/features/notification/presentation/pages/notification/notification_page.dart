import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/notification/data/data_sources/database/notification_database.dart';
import 'package:jeka/features/notification/data/models/notification.dart';

class Notificationpage extends StatelessWidget {
  final void Function() onOpenDrawer;
  const Notificationpage({super.key, required this.onOpenDrawer});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          surfaceTintColor: Theme.of(context).colorScheme.surface,
          title: const ReuseableText(
            "Notifications",
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              onOpenDrawer();
            },
            icon: const FaIcon(
              FontAwesomeIcons.barsStaggered,
            ),
          ),
        ),
        body: FutureBuilder<List<NotificationModel>>(
            future: getIt<NotificationDatabase>()
                .notificationDao
                .getAllNotifications(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting &&
                  !snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (!snapshot.hasData) {
                return const Center(
                  child: ReuseableText(
                    "No notifications",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const FaIcon(
                        FontAwesomeIcons.solidBell,
                        color: Colors.blue,
                      ),
                    ),
                    title: ReuseableText(
                      snapshot.data?[index].title ?? "",
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ReuseableText(
                          snapshot.data?[index].body ?? "",
                        ),
                        ReuseableText(
                          DateFormat('MMM dd, yyyy').format(
                              snapshot.data?[index].timestamp ??
                                  DateTime.now()),
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
