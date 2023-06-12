import 'package:chat_app_1/features/group/domain/entities/text_message_entity.dart';
import 'package:chat_app_1/features/group/domain/repository/group_repository.dart';

class SendTextMessageUseCase {
  final GroupRepository repository;

  SendTextMessageUseCase({required this.repository});

  Future<void> call(
      TextMessageEntity textMessageEntity, String channelId) async {
    return await repository.sendTextMessage(textMessageEntity, channelId);
  }
}
