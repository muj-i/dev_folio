import 'package:dev_folio/presentation/utils/app_assets.dart';
import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    this.itemImage,
    this.itemName,
    this.itemDescription,
    this.techStack,
    this.appStoreLink,
    this.playStoreLink,
    this.verifyText,
    this.isCompanyProject = false,
    this.onTapAppStore,
    this.onTapPlayStore,
    this.onTapGithub,
    this.onTapYoutube,
    this.onTapLinkedin,
    this.onTapAndroid,
    this.onTapVerifyCertificate,
  });

  final String? itemImage;
  final String? itemName;
  final String? itemDescription;
  final String? techStack;
  final String? appStoreLink;
  final String? playStoreLink;
  final String? verifyText;
  final bool? isCompanyProject;
  final VoidCallback? onTapAppStore;
  final VoidCallback? onTapPlayStore;
  final VoidCallback? onTapGithub;
  final VoidCallback? onTapYoutube;
  final VoidCallback? onTapLinkedin;
  final VoidCallback? onTapAndroid;
  final VoidCallback? onTapVerifyCertificate;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 330,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              itemImage ?? '',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            itemName ?? '',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          itemDescription == null
              ? const SizedBox()
              : Text(
                  itemDescription ?? '',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
          itemDescription == null
              ? const SizedBox()
              : const SizedBox(height: 10),
          techStack == null
              ? const SizedBox()
              : Text(
                  techStack ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
          techStack == null ? const SizedBox() : const SizedBox(height: 10),
          isCompanyProject == true
              ? Row(
                  children: [
                    const Text(
                      'Preview',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: onTapAppStore,
                      child: Image.asset(
                        AppAssets.appStoreLogo,
                        height: 20,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: onTapPlayStore,
                      child: Image.asset(
                        AppAssets.playStoreLogo,
                        height: 20,
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    onTapGithub == null
                        ? OutlinedButton(
                            onPressed: onTapVerifyCertificate,
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: AppColors.green,
                              ),
                              backgroundColor: AppColors.green.withOpacity(0.1),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  verifyText ?? '',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: AppColors.green,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Icon(
                                  FontAwesomeIcons.shield,
                                  size: 16,
                                  color: AppColors.green,
                                ),
                              ],
                            ),
                          )
                        : const Text(
                            'Preview',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                    const SizedBox(width: 10),
                    onTapGithub == null
                        ? const SizedBox()
                        : InkWell(
                            onTap: onTapGithub,
                            child: const Icon(
                              FontAwesomeIcons.github,
                              size: 20,
                            )),
                    const SizedBox(width: 10),
                    onTapYoutube == null
                        ? const SizedBox()
                        : InkWell(
                            onTap: onTapYoutube,
                            child: const Icon(
                              FontAwesomeIcons.youtube,
                              size: 20,
                            )),
                    onTapLinkedin == null
                        ? const SizedBox()
                        : const SizedBox(width: 10),
                    onTapLinkedin == null
                        ? const SizedBox()
                        : InkWell(
                            onTap: onTapLinkedin,
                            child: const Icon(
                              FontAwesomeIcons.linkedin,
                              size: 20,
                            )),
                    const SizedBox(width: 10),
                    onTapAndroid == null
                        ? const SizedBox()
                        : InkWell(
                            onTap: onTapAndroid,
                            child: const Icon(
                              FontAwesomeIcons.android,
                              size: 20,
                            )),
                  ],
                ),
        ],
      ),
    );
  }
}
