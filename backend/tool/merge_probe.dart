import 'package:backend/database/database_client.dart';
import 'package:dotenv/dotenv.dart';

Future<void> main() async {
  final env = DotEnv()..load(['.env']);
  final db = await DatabaseClient.initialize(env['DIRECT_URL']!);
  try {
    final tags = await db.prisma.tag.findMany(take: 1);
    print('OK tags=${tags.length}');
  } catch (e) {
    print('ERR: ${e.toString().split("\n").first}');
  }
}
