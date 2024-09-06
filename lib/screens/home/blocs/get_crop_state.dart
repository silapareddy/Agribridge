part of "get_crop_bloc.dart";
sealed class GetCropState extends Equatable {
  const GetCropState();

  @override
  List<Object> get props => [];
}

final class GetCropInitial extends GetCropState {}

final class GetCropFailure extends GetCropState {}
final class GetCropLoading extends GetCropState {}
final class GetCropSuccess extends GetCropState {
  final List<Crop> crops;

  const GetCropSuccess(this.crops);

  @override
  List<Object> get props => [crops];
}
