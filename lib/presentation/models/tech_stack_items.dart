import 'package:dev_folio/presentation/models/tech_stack_model.dart';
import 'package:dev_folio/presentation/utils/tech_stack_assets.dart';

class TechMobileDevData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.dart, title: 'Dart'),
    TechStackModel(svgImage: TechStackAssets.flutter, title: 'Flutter'),
  ];
}

class TechServerDevData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.dJango, title: 'Django'),
    TechStackModel(svgImage: TechStackAssets.node, title: 'NodeJs'),
    TechStackModel(svgImage: TechStackAssets.nest, title: 'NestJs'),
  ];
}

class TechDatabaseData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.firebase, title: 'Firebase'),
    TechStackModel(svgImage: TechStackAssets.mongoDb, title: 'MongoDB'),
  ];
}

class TechProjectManagementData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.notion, title: 'Notion'),
    TechStackModel(svgImage: TechStackAssets.trello, title: 'Trello'),
    TechStackModel(svgImage: TechStackAssets.jira, title: 'Jira'),
  ];
}

class TechVersionControlData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.git, title: 'Git'),
    TechStackModel(svgImage: TechStackAssets.github, title: 'GitHub'),
  ];
}

class TechUIUXData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.figma, title: 'Figma'),
  ];
}

class TechIDEsAndCodeEditorsData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.vsCode, title: 'VS Code'),
    TechStackModel(svgImage: TechStackAssets.xcode, title: 'Xcode'),
    TechStackModel(
        svgImage: TechStackAssets.androidStudio, title: 'Android Studio'),
  ];
}
