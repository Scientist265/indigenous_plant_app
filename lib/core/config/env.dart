import '../logger.dart';

late Env _env;

Env get env => _env;

class Env {
  final String supabaseUrl;
  final String anonKey;

  Env._init({
    required this.supabaseUrl,
    required this.anonKey,
  });

  static void init() {
    _env = Env._init(
      supabaseUrl: const String.fromEnvironment('SUPABASE_URL'),
      anonKey: const String.fromEnvironment('ANON_KEY'),
    );
    Logger.info(location: 'Environment', message: 'Environments Init');
    Logger.info(location: 'BASE_URL', message: env.supabaseUrl);
  }
}
