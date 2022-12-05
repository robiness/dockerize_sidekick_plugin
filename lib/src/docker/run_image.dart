import 'package:dockerize_sidekick_plugin/src/util/command_runner.dart';
import 'package:sidekick_core/sidekick_core.dart';

/// Starting the docker image
void runImage({String? port}) {
  final String publicPort = port ?? '8000';
  commandRunner(
    'docker',
    [
      'run',
      '-d',
      '--rm',
      '-p',
      '$publicPort:8080',
      '--name',
      mainProject!.name,
      '${mainProject!.name}:dev',
    ],
    workingDirectory: repository.root,
  );
  print(green('App is running on http://localhost:$publicPort'));
}
