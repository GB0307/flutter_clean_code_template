import 'package:cpea/src/core/interfaces/response.dart';
import 'package:equatable/equatable.dart';

abstract class IUseCase<Type, Params> {
  const IUseCase();

  Future<Response<Type>> call(Params params);
}

class NoParams extends Equatable {
  const NoParams();
  @override
  List<Object> get props => const [];
}
