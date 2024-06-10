import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

class ReuseableTextForm extends StatefulWidget {
  final String? title;
  final String hintText;
  final bool showHideButton;
  final TextEditingController? controller;
  final String? Function(String? val)? validator;
  final TextInputType? textInputType;
  final int? maxLines;
  final int? minLines;
  final FocusNode? focus;
  final void Function(PointerDownEvent)? onTapOutside;
  const ReuseableTextForm({
    super.key,
    this.title,
    required this.hintText,
    this.showHideButton = false,
    this.controller,
    this.validator,
    this.textInputType,
    this.maxLines,
    this.minLines,
    this.focus,
    this.onTapOutside,
  });

  @override
  State<ReuseableTextForm> createState() => _ReuseableTextFormState();
}

class _ReuseableTextFormState extends State<ReuseableTextForm> {
  bool _isHidden = true;
  FocusNode focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.title != null ? ReuseableText(widget.title!) : const SizedBox(),
        const SizedBox(
          height: 6,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: colorScheme.surfaceBright,
            border: Border.all(
              color: colorScheme.shadow,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  minLines: widget.minLines,
                  keyboardType: widget.textInputType,
                  controller: widget.controller,
                  focusNode: widget.focus ?? focus,
                  validator: widget.validator,
                  obscureText: widget.showHideButton && _isHidden,
                  onTapOutside: (event) {
                    if (widget.onTapOutside == null) {
                      (widget.focus ?? focus).unfocus();
                    } else {
                      widget.onTapOutside!(event);
                    }
                  },
                  style: GoogleFonts.lato(fontSize: 14),
                  cursorHeight: 20,
                  maxLines: widget.maxLines,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: GoogleFonts.lato(fontSize: 14),
                    contentPadding: const EdgeInsets.only(left: 16),
                  ),
                ),
              ),
              Visibility(
                visible: widget.showHideButton,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isHidden = !_isHidden;
                    });
                  },
                  icon: FaIcon(
                    _isHidden
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash,
                    size: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
