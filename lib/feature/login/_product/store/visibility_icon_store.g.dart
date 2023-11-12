// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visibility_icon_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VisibilityIconStore on _VisibilityIconStoreBase, Store {
  late final _$isVisibleAtom =
      Atom(name: '_VisibilityIconStoreBase.isVisible', context: context);

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  late final _$_VisibilityIconStoreBaseActionController =
      ActionController(name: '_VisibilityIconStoreBase', context: context);

  @override
  void setVisible(bool visible) {
    final _$actionInfo = _$_VisibilityIconStoreBaseActionController.startAction(
        name: '_VisibilityIconStoreBase.setVisible');
    try {
      return super.setVisible(visible);
    } finally {
      _$_VisibilityIconStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isVisible: ${isVisible}
    ''';
  }
}
