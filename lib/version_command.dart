import 'package:args/command_runner.dart';

class VersionCommand extends Command {
  // 版本号由构建时注入（CI release workflow 传 -DAPP_VERSION）
  static const _appVersion = String.fromEnvironment('APP_VERSION');

  @override
  String get description => 'Print the current version';

  @override
  bool get hidden => true;

  @override
  String get name => 'version';

  @override
  Future<void> run() async {
    print('Bump ${_appVersion.isEmpty ? '1.0.0+1' : _appVersion}');
  }
}
