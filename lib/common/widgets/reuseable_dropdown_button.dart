import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

class ReuseableDropdownButtonItemEntity<T> {
  final T value;
  final String text;
  ReuseableDropdownButtonItemEntity(this.text, this.value);
}

class ReuseableDropdownButton<T> extends StatefulWidget {
  final String hintText;
  final List<ReuseableDropdownButtonItemEntity<T>> items;
  final void Function(T? value)? onChange;
  final String? title;
  final bool enable;

  const ReuseableDropdownButton({
    super.key,
    required this.hintText,
    required this.items,
    required this.onChange,
    this.title,
    this.enable = true,
  });

  @override
  State<ReuseableDropdownButton<T>> createState() =>
      _ReuseableDropdownButtonState<T>();
}

class _ReuseableDropdownButtonState<T>
    extends State<ReuseableDropdownButton<T>> {
  T? _value;

  @override
  void didUpdateWidget(covariant ReuseableDropdownButton<T> oldWidget) {
    if (widget.items.where((element) => element.value == _value).isEmpty) {
      _value = null;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title != null
              ? ReuseableText(widget.title!)
              : const SizedBox(),
          const SizedBox(
            height: 6,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                ),
              ],
            ),
            child: DropdownButton<T>(
              hint: ReuseableText(
                widget.hintText,
                color: Colors.grey,
                fontSize: 13,
              ),
              style: GoogleFonts.lato(
                fontSize: 13,
                color: colorScheme.onSurface,
              ),
              isExpanded: true,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              underline: const SizedBox(),
              value: _value,
              items: widget.items
                  .map(
                    (e) => DropdownMenuItem(
                      value: e.value,
                      child: Text(e.text),
                    ),
                  )
                  .toList(),
              onChanged: widget.enable
                  ? (val) {
                      setState(() {
                        _value = val;
                      });
                      if (widget.onChange != null) {
                        widget.onChange!(val);
                      }
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
