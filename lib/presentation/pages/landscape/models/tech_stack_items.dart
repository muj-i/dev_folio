import 'package:dev_folio/presentation/models/tech_stack_model.dart';
import 'package:dev_folio/presentation/utils/tech_stack_assets.dart';

class TechLanguagesData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.dart, title: 'Dart'),
    TechStackModel(svgImage: TechStackAssets.swift, title: 'Swift'),
    TechStackModel(svgImage: TechStackAssets.kotlin, title: 'Kotlin'),
    TechStackModel(svgImage: TechStackAssets.python, title: 'Python'),
    TechStackModel(svgImage: TechStackAssets.go, title: 'Go'),
    TechStackModel(svgImage: TechStackAssets.c, title: 'C'),
    TechStackModel(svgImage: TechStackAssets.cpp, title: 'C++'),
    TechStackModel(svgImage: TechStackAssets.csharp, title: 'C#'),
    TechStackModel(svgImage: TechStackAssets.js, title: 'JavaScript'),
    TechStackModel(svgImage: TechStackAssets.ts, title: 'TypeScript'),
  ];
}

class TechFrameworksData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.flutter, title: 'Flutter'),
    TechStackModel(svgImage: TechStackAssets.dJango, title: 'Django'),
    TechStackModel(svgImage: TechStackAssets.node, title: 'NodeJs'),
    TechStackModel(svgImage: TechStackAssets.nest, title: 'NestJs'),
  ];
}

class TechToolsAndPlatformsData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.figma, title: 'Figma'),
    TechStackModel(svgImage: TechStackAssets.postMan, title: 'Postman'),
    TechStackModel(svgImage: TechStackAssets.swagger, title: 'Swagger'),
    TechStackModel(svgImage: TechStackAssets.mongoDb, title: 'MongoDB'),
    TechStackModel(svgImage: TechStackAssets.docker, title: 'Docker'),
    TechStackModel(svgImage: TechStackAssets.linux, title: 'Linux'),
  ];
}

class TechCloudServicesData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.firebase, title: 'Firebase'),
    TechStackModel(svgImage: TechStackAssets.aws, title: 'AWS'),
    TechStackModel(svgImage: TechStackAssets.gcp, title: 'GCP'),
  ];
}

class TechVersionControlAndCICDData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.git, title: 'Git'),
    TechStackModel(svgImage: TechStackAssets.github, title: 'GitHub'),
    TechStackModel(svgImage: TechStackAssets.gitlab, title: 'GitLab'),
    TechStackModel(svgImage: TechStackAssets.codeMagic, title: 'Codemagic'),
  ];
}

class TechIDEsAndCodeEditorsData {
  final List<TechStackModel> items = [
    TechStackModel(
        svgImage: TechStackAssets.vsCode, title: 'VS Code'),
    TechStackModel(svgImage: TechStackAssets.xcode, title: 'Xcode'),
    TechStackModel(
        svgImage: TechStackAssets.androidStudio, title: 'Android Studio'),
  ];
}

class Tech3rdPartyCommunicationSdksData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.agora, title: 'Agora'),
    TechStackModel(svgImage: TechStackAssets.stream, title: 'Stream'),
    TechStackModel(svgImage: TechStackAssets.twilio, title: 'Twilio'),
  ];
}

class TechProjectManagementToolsData {
  final List<TechStackModel> items = [
    TechStackModel(svgImage: TechStackAssets.notion, title: 'Notion'),
    TechStackModel(svgImage: TechStackAssets.trello, title: 'Trello'),
    TechStackModel(svgImage: TechStackAssets.jira, title: 'Jira'),
  ];
}
