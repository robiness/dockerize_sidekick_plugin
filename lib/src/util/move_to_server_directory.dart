import 'package:sidekick_core/sidekick_core.dart';

// This moves the build web project to the server/www directory
void moveToServerDirectory() {
  repository.root.directory('packages/server/www').createSync(recursive: true);
  copyTree(
    mainProject!.root.directory('build/web').path,
    repository.root.directory('packages/server/www').path,
    overwrite: true,
  );
}
