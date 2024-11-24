import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';

part 'add_inventory_bloc.freezed.dart';
part 'add_inventory_event.dart';
part 'add_inventory_state.dart';

@injectable
class AddInventoryBloc extends BaseBloc<AddInventoryEvent, AddInventoryState> {
  AddInventoryBloc() : super();

  @override
  Future<void> handleEvent(
    AddInventoryEvent event,
    Emitter<BaseState<AddInventoryState>> emit,
  ) async {
    state.maybeWhen(
      loaded: (data) async {
        await event.map(
          updateName: (e) async {
            emitLoaded(
              emit,
              data.copyWith(
                item: data.item.copyWith(name: e.name),
              ),
            );
          },
          updateDescription: (e) async {
            emitLoaded(
              emit,
              data.copyWith(
                item: data.item.copyWith(description: e.description),
              ),
            );
          },
          updateQuantity: (e) async {
            final item = data.item.copyWith(quantity: e.quantity);
            emitLoaded(emit, AddInventoryState(item: item));
          },
          updateAvailable: (e) async {
            final item = data.item.copyWith(available: e.available);
            emitLoaded(emit, AddInventoryState(item: item));
          },
          updateRent: (e) async {
            emitLoaded(
              emit,
              data.copyWith(
                item: data.item.copyWith(rent: e.rent),
              ),
            );
          },
          createItem: (_) async {
            if (data.item.name.isEmpty) {
              return;
            }

            emitLoading(emit);

            try {
              final item = InventoryItemEntity(
                id: DateTime.now().millisecondsSinceEpoch,
                name: data.item.name,
                description: data.item.description,
                quantity: data.item.quantity,
                available: data.item.quantity,
                rent: data.item.rent,
              );

              // TODO: Save item

              emitLoaded(
                emit,
                data.copyWith(
                  item: item,
                ),
              );
            } catch (e) {
              emitError(emit, e.toString());
            }
          },
        );
      },
      orElse: () {
        emitLoaded(emit, AddInventoryState(item: InventoryItemEntity.empty()));
        handleEvent(event, emit);
      },
    );
  }
}
