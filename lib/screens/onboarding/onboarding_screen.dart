import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../routes/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  final List<_OnboardingData> _pages = const [
    _OnboardingData(
      icon: Icons.verified_rounded,
      title: AppStrings.onboardingTitle1,
      description: AppStrings.onboardingDescription1,
    ),
    _OnboardingData(
      icon: Icons.receipt_long_rounded,
      title: AppStrings.onboardingTitle2,
      description: AppStrings.onboardingDescription2,
    ),
    _OnboardingData(
      icon: Icons.notifications_active_rounded,
      title: AppStrings.onboardingTitle3,
      description: AppStrings.onboardingDescription3,
    ),
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _finishOnboarding();
    }
  }

  void _finishOnboarding() {
    Navigator.pushReplacementNamed(
      context,
      AppRoutes.login,
    );
  }

  void _skip() {
    _finishOnboarding();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isLastPage =
        _currentPage == _pages.length - 1;

    return Scaffold(
      backgroundColor:
      Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // =========================================================
            // TOP BAR
            // =========================================================

            Padding(
              padding: const EdgeInsets.fromLTRB(
                24,
                16,
                24,
                8,
              ),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: AppColors.primary.withValues(
                            alpha: 0.10,
                          ),
                          borderRadius:
                          BorderRadius.circular(11),
                        ),
                        child: const Icon(
                          Icons.verified_user_rounded,
                          color: AppColors.primary,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        AppStrings.appName,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: _skip,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                    ),
                    child: const Text(
                      AppStrings.skip,
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // =========================================================
            // ONBOARDING PAGES
            // =========================================================

            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return _OnboardingPage(
                    data: _pages[index],
                  );
                },
              ),
            ),

            // =========================================================
            // BOTTOM CONTROLS
            // =========================================================

            Padding(
              padding: const EdgeInsets.fromLTRB(
                24,
                8,
                24,
                26,
              ),
              child: Column(
                children: [
                  // Page indicators
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: List.generate(
                      _pages.length,
                          (index) {
                        final bool active =
                            index == _currentPage;

                        return AnimatedContainer(
                          duration:
                          const Duration(milliseconds: 250),
                          curve: Curves.easeInOut,
                          margin:
                          const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          width: active ? 24 : 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: active
                                ? AppColors.primary
                                : AppColors.border,
                            borderRadius:
                            BorderRadius.circular(20),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Main button
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: _nextPage,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text(
                            isLastPage
                                ? AppStrings.getStarted
                                : AppStrings.next,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            isLastPage
                                ? Icons.arrow_forward_rounded
                                : Icons.chevron_right_rounded,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// ONBOARDING PAGE
// ============================================================================

class _OnboardingPage extends StatelessWidget {
  final _OnboardingData data;

  const _OnboardingPage({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);

    final double illustrationSize =
    screenSize.width < 360 ? 170 : 190;

    final double iconContainerSize =
    screenSize.width < 360 ? 110 : 125;

    final double iconSize =
    screenSize.width < 360 ? 48 : 54;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // =========================================================
          // OUTER ICON SHELL
          // =========================================================

          Container(
            width: illustrationSize,
            height: illustrationSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(
                alpha: 0.50,
              ),
              border: Border.all(
                color: Colors.white.withValues(
                  alpha: 0.70,
                ),
                width: 1.2,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(
                    alpha: 0.06,
                  ),
                  blurRadius: 25,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Center(
              child: Container(
                width: iconContainerSize,
                height: iconContainerSize,
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(
                        alpha: 0.12,
                      ),
                      blurRadius: 24,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Icon(
                  data.icon,
                  size: iconSize,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),

          const SizedBox(height: 40),

          // =========================================================
          // TITLE
          // =========================================================

          Text(
            data.title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 14),

          // =========================================================
          // DESCRIPTION
          // =========================================================

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 340,
            ),
            child: Text(
              data.description,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(
                fontSize: 15,
                color: AppColors.textSecondary,
                height: 1.55,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// ONBOARDING DATA
// ============================================================================

class _OnboardingData {
  final IconData icon;
  final String title;
  final String description;

  const _OnboardingData({
    required this.icon,
    required this.title,
    required this.description,
  });
}