part of 'get_crop_bloc.dart';

sealed class GetCropEvent extends Equatable {
  const GetCropEvent();

  @override
  List<Object> get props => [];
}

class GetCrop extends GetCropEvent{}