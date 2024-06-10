import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generative_text_editor_state.dart';
part 'generative_text_editor_cubit.freezed.dart';

class GenerativeTextEditorCubit extends Cubit<GenerativeTextEditorState> {
  GenerativeTextEditorCubit()
      : super(const GenerativeTextEditorState.initial());
}
