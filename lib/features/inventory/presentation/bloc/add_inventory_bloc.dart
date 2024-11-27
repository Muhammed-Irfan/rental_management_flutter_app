import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/models/navigation_result.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/inventory/domain/usecases/add_inventory_item_usecase.dart.dart';
import 'package:rentease/features/inventory/domain/usecases/get_all_inventory_item_by_id_usecase.dart';
import 'package:rentease/features/inventory/domain/usecases/update_inventory_item_usecase.dart';

part 'add_inventory_bloc.freezed.dart';
part 'add_inventory_event.dart';
part 'add_inventory_state.dart';

@injectable
class AddInventoryBloc extends BaseBloc<AddInventoryEvent, AddInventoryState> {
  final AddInventoryItemUseCase _addInventoryItemUseCase;
  final UpdateInventoryItemUseCase _updateInventoryItemUseCase;
  final GetInventoryItemByIdUseCase _getInventoryItemUseCase;

  AddInventoryBloc(
    this._addInventoryItemUseCase,
    this._updateInventoryItemUseCase,
    this._getInventoryItemUseCase,
  ) : super();

  @override
  Future<void> handleEvent(
    AddInventoryEvent event,
    Emitter<BaseState<AddInventoryState>> emit,
  ) async {
    await state.maybeWhen(
      loaded: (data) async {
        await event.map(
          setItem: (e) => _setItem(emit, e),
          updateFields: (e) => _updateFields(emit, data, e),
          createItem: (e) => _createItem(emit, data),
          updateItem: (e) => _saveItem(emit, data),
        );
      },
      orElse: () async {
        emitLoaded(emit, AddInventoryState(item: InventoryItemEntity.empty()));
        await handleEvent(event, emit);
      },
    );
  }

  Future<void> _setItem(
    Emitter<BaseState<AddInventoryState>> emit,
    _SetItem e,
  ) async {
    emitLoading(emit);
    final result = await _getInventoryItemUseCase(e.itemId);
    result.fold(
      (error) => emitError(emit, error.message),
      (item) {
        emitLoaded(emit, AddInventoryState(item: item));
      },
    );
  }

  Future<void> _createItem(
    Emitter<BaseState<AddInventoryState>> emit,
    AddInventoryState data,
  ) async {
    if (data.item.name.isEmpty) return;

    emitLoading(emit);
    final item = InventoryItemEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: data.item.name,
      description: data.item.description,
      rent: data.item.rent,
      quantity: data.item.quantity,
      available: data.item.available,
    );

    final result = await _addInventoryItemUseCase(item);
    result.fold(
      (error) => emitError(emit, error.message),
      (_) {
        emitNavigation(
          emit,
          NavigationResult.back(
            message: 'Item created successfully',
          ),
        );
      },
    );
  }

  Future<void> _saveItem(
    Emitter<BaseState<AddInventoryState>> emit,
    AddInventoryState data,
  ) async {
    emitLoading(emit);
    final result = await _updateInventoryItemUseCase(data.item);
    result.fold(
      (error) => emitError(emit, error.message),
      (_) {
        emitNavigation(
          emit,
          NavigationResult.back(
            message: 'Item updated successfully',
          ),
        );
      },
    );
  }

  Future<void> _updateFields(
    Emitter<BaseState<AddInventoryState>> emit,
    AddInventoryState data,
    _UpdateFields event,
  ) async {
    final updatedItem = data.item.copyWith(
      name: event.name,
      description: event.description,
      rent: event.rent,
      quantity: event.quantity,
      available: event.available,
    );
    emitLoaded(emit, data.copyWith(item: updatedItem));
  }
}
