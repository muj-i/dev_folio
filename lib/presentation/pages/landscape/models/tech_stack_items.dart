import 'package:dev_folio/presentation/models/tech_stack_model.dart';
import 'package:dev_folio/presentation/utils/tech_stack_assets.dart';

class TechSdkData {
  final List<TechStackModel> techSdkItems = [
    TechStackModel(svgImage: TechStackAssets.flutter, title: 'Flutter'),
    TechStackModel(svgImage: TechStackAssets.dJango, title: 'Django'),
    TechStackModel(svgImage: TechStackAssets.firebase, title: 'Firebase'),
    TechStackModel(svgImage: TechStackAssets.node, title: 'NodeJs'),
    TechStackModel(svgImage: TechStackAssets.nest, title: 'NestJs'),
  ];
}
