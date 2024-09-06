import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:crop_repository/crop_repository.dart';

part 'get_crop_event.dart';
part 'get_crop_state.dart';

class GetCropBloc extends Bloc<GetCropEvent, GetCropState> {
  final CropRepo _cropRepo;

  GetCropBloc(this._cropRepo) : super(GetCropInitial()) {
    on<GetCrop>((event, emit) async {
      emit(GetCropLoading());
      try {
        List<Crop> crops = await _cropRepo.getCrops();
        emit(GetCropSuccess(crops));
      } catch (e) {
        emit(GetCropFailure());
      }
    });
  }
}