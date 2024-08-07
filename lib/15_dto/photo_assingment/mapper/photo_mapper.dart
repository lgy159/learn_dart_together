import 'package:learn_dart_together/15_dto/photo_assingment/dto/photo_dto.dart';
import 'package:learn_dart_together/15_dto/photo_assingment/model/photo.dart';

extension PhotoMapper on PhotoDto {
  Photo toPhoto() {
    return Photo(
      id: int.tryParse(id.toString()) ?? -1,
      type: type ?? Type.unknown,
      title: title ?? '제목 없음',
      content: content ?? '내용 없음',
      createdAt: createdAt ?? DateTime.parse('0001-01-01'),
    );
  }
}

