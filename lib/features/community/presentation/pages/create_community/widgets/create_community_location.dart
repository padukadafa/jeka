import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/region.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_selector.dart';

class CreateCommunityLocation extends StatelessWidget {
  const CreateCommunityLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final createCommunityCubit = context.read<CreateCommunityCubit>();
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ReuseableText("Province"),
          const SizedBox(
            height: 8,
          ),
          ProvinceCreateCommunitySelector(
            builder: (province) {
              return Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceBright,
                  border: Border.all(color: colorScheme.shadow),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: const Text("Select Province"),
                    value: province,
                    items: dataProvinsi
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item['name'],
                            child: Text(
                              item['name']!,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (val) {
                      if (val != null) {
                        createCommunityCubit.updateProvince(val);
                      }
                    },
                  ),
                ),
              );
            },
          ),
          RegencyCreateCommunitySelector(
            builder: (regency) {
              if (regency['provinceId'] == null) {
                return const SizedBox();
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReuseableText("Regency"),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceBright,
                      border: Border.all(color: colorScheme.shadow),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: const Text("Select Regency"),
                        value: regency['regency'],
                        items: (dataKabupaten
                                .where(
                                    (val) => val['id'] == regency['provinceId'])
                                .first['data'] as List<Map<String, String>>)
                            .map(
                              (item) => DropdownMenuItem<String>(
                                value: item['name'],
                                child: Text(
                                  item['name']!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (val) {
                          if (val != null) {
                            createCommunityCubit.updateRegency(val);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
