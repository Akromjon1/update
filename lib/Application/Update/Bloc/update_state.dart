part of 'update_bloc.dart';

abstract class UpdateState extends Equatable {
  const UpdateState();
}

class UpdateErrorState extends UpdateState {
  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];

  const UpdateErrorState(this.errorMessage);
}
class UpdateInitialState extends UpdateState {
  final bool isLoading;
  @override
  List<Object> get props => [isLoading];

  const UpdateInitialState(this.isLoading);
}

class UpdateSuccessState extends UpdateState {
  final String successMessage;

  @override
  List<Object> get props => [successMessage];

  const UpdateSuccessState(this.successMessage);
}
