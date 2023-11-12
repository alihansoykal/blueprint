import 'package:mobx/mobx.dart';

part 'visibility_icon_store.g.dart';

class VisibilityIconStore = _VisibilityIconStoreBase with _$VisibilityIconStore;

abstract class _VisibilityIconStoreBase with Store {
  @observable
  bool isVisible = false;

  @action
  void setVisible(bool visible) {
    isVisible = visible;
  }
}
