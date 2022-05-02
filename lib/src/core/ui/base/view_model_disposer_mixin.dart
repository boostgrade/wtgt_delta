import 'package:flutter/widgets.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';

/// Миксин, предоставляющий возможность отписать [ViewModel].
/// Подставляем вьюмоедль через геттер.
mixin ViewModelDisposerMixin<W extends StatefulWidget, VM extends ViewModel>
    on State<W> {
  VM get vm;

  @override
  void dispose() {
    vm.dispose();
    super.dispose();
  }
}
