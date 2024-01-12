import 'package:discord_bot/jarvis.dart';
import 'package:discord_bot/services/chat_service.dart';

void main() async {
  final bot = Jarvis(ChatServiceImpl());
  await bot.onInit().then((_) {
    bot.run();
  }).onError(
    (error, stackTrace) {
      bot.dispose();
    },
  );
}
