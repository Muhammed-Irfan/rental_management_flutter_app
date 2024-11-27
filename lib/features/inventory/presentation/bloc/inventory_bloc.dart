import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/events/inventory_updated.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/core/utils/event_bus.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/inventory/domain/usecases/get_all_inventory_items_usecase.dart';

part 'inventory_bloc.freezed.dart';
part 'inventory_event.dart';
part 'inventory_state.dart';

@injectable
class InventoryBloc extends BaseBloc<InventoryEvent, InventoryState> {
  final GetInventoryWithAvailabilityUseCase _getAllInventoryItemsUseCase;
  final EventBus _eventBus;
  late final StreamSubscription<InventoryUpdated> _inventorySubscription;

  InventoryBloc(
    this._getAllInventoryItemsUseCase,
    this._eventBus,
  ) : super() {
    _inventorySubscription = _eventBus.on<InventoryUpdated>((event) {
      add(const InventoryEvent.loadInventory());
    });
  }

  @override
  Future<void> handleEvent(
    InventoryEvent event,
    Emitter<BaseState<InventoryState>> emit,
  ) async {
    await event.map(
      loadInventory: (e) => _loadInventory(emit),
    );
  }

  @override
  Future<void> close() {
    _inventorySubscription.cancel();
    return super.close();
  }

  Future<void> _loadInventory(Emitter<BaseState<InventoryState>> emit) async {
    emitLoading(emit);
    final result = await _getAllInventoryItemsUseCase(const NoParams());
    
    result.fold(
      (failure) => emitError(emit, failure.message),
      (items) => emitLoaded(emit, InventoryState(items: items)),
    );
  }
}
