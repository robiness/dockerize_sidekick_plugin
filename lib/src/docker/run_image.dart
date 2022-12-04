import 'package:dcli/dcli.dart' as dcli;
import 'package:dockerize_sidekick_plugin/src/util/command_runner.dart';
import 'package:sidekick_core/sidekick_core.dart';

/// Starting the docker image
void runImage() {
  commandRunner(
    'docker',
    [
      'run',
      '-d',
      '--rm',
      '-p',
      '8080:8080',
      '--name',
      mainProject!.name,
      '${mainProject!.name}:dev',
    ],
    workingDirectory: repository.root,
  );
  dcli.run(
    'docker run -d --rm -p 8000:8080 --name ${mainProject!.name} ${mainProject!.name}:dev',
  );
  print(green('App is running on http://localhost:8000'));
}
