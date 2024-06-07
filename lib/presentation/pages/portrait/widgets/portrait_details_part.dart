import 'package:dev_folio/presentation/utils/app_assets.dart';
import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:dev_folio/presentation/utils/app_theme.dart';
import 'package:dev_folio/presentation/utils/strtings.dart';
import 'package:dev_folio/presentation/widgets/shader_mask_widget.dart';
import 'package:flutter/material.dart';

class PortraitDetailsPart extends StatelessWidget {
  const PortraitDetailsPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                gradient: const LinearGradient(
                  colors: [AppColors.yellow, AppColors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.asset(
                    AppAssets.meImg,
                    height: 350,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      AppStrings.hiText,
                      style: AppTheme.poppinsTextStyle
                          .copyWith(fontSize: 58, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(AppAssets.hiGif, height: 58),
                    Text(
                      ',',
                      style: AppTheme.poppinsTextStyle
                          .copyWith(fontSize: 58, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  AppStrings.myNameIsText,
                  style: AppTheme.poppinsTextStyle
                      .copyWith(fontSize: 58, fontWeight: FontWeight.bold),
                ),
                ShaderMaskWidget(
                  child: Text(
                    AppStrings.fullName,
                    style: AppTheme.poppinsTextStyle
                        .copyWith(fontSize: 58, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  AppStrings.whatIDoText,
                  style: AppTheme.poppinsTextStyle
                      .copyWith(fontSize: 58, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
