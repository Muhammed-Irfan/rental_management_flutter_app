import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';

part 'customers_event.dart';
part 'customers_state.dart';
part 'customers_bloc.freezed.dart';

@injectable
class CustomersBloc extends BaseBloc<CustomersEvent, CustomersState> {
  CustomersBloc() : super();

  @override
  Future<void> handleEvent(
    CustomersEvent event,
    Emitter<BaseState<CustomersState>> emit,
  ) async {
    await event.map(loadCustomers:(e) async => (),);
  }
}
