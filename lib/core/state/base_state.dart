import 'package:oneiro/core/enums/store_state.dart';
import 'package:oneiro/core/utils/app_logger.dart';
import 'package:oneiro/models/failure.dart';
import 'package:flutter/material.dart';

abstract class BaseState {
  late final _logger = AppLogger(BaseState);
  late final ValueNotifier<StoreState> _state =
      ValueNotifier<StoreState>(StoreState.initial);
  // late final ValueNotifier<StoreState> _state = StoreState.initial.obs;
  // late final ValueNotifier<int> _state3 = 7.obs;// ValueNotifier<int>(7)
  // ValueNotifier<StoreState> get state => _state;

  void setStoreState(StoreState state) {
    if (state != _state.value) {
      _state.value = state;
    }
  }

  void handleError(Object e, [Object? stackTrace]) {
    if (e is Failure) throw e;
    _logger.e(e);
    if (stackTrace != null) _logger.i(stackTrace);
  }
}
