import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';
part 'inventory_bloc.freezed.dart';

@injectable
class InventoryBloc extends BaseBloc<InventoryEvent, InventoryState> {
  InventoryBloc() : super();

  @override
  Future<void> handleEvent(
    InventoryEvent event,
    Emitter<BaseState<InventoryState>> emit,
  ) async {
    await event.map(
      loadInventory: (_) async {},
    );
  }
}
