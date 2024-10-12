import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:flutter_web_app/portfolio_screen.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constant/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const PortfolioScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {


  const HomeScreen({super.key}); // Accent color for icons and text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                
                  child: _buildHeader(context)),
             // const SizedBox(height: 50),
           //   _buildMainContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AppIcons.appLogo,
        ),
        Row(
          children: [
            _buildNavItem("Home", context),
            _buildNavItem("About Me", context),
            _buildNavItem("Portfolio",context),
            _buildNavItem("Skills",context),
            _buildNavItem("Career",context),
            _buildNavItem("Recommended",context),
            _buildNavItem("Contact",context),
          ],
        ),
      ],
    );
  }

  Widget _buildNavItem(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: GoogleFonts.raleway(
            color: Theme.of(context).colorScheme.onSurface, fontSize: 16),
      ),
    );
  }
  //
  // // Widget _buildMainContent(BuildContext context) {
  // //   return Row(
  // //     children: [
  // //       Column(
  // //         crossAxisAlignment: CrossAxisAlignment.start,
  // //         children: [
  // //           _buildSalutationBadge(context),
  // //           const SizedBox(height: 16),
  //           _buildNameAndRole(),
  // //           const SizedBox(height: 16),
  // //           _buildSocialLinks(),
  // //         ],
  // //       ),
  // //       const Spacer(),
  // //       _buildAvatarSection(),
  // //     ],
  // //   );
  // // }
  //
  // // Widget _buildSalutationBadge(BuildContext context) {
  // //   return Container(
  // //     padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
  // //     decoration: BoxDecoration(
  // //       color: const Color(0xFF232341),
  // //       borderRadius: BorderRadius.circular(20),
  // //     ),
  // //     child: Row(
  // //       mainAxisSize: MainAxisSize.min,
  // //       children: [
  // //         Icon(
  // //           Icons.waving_hand,
  // //           color: Theme.of(context).colorScheme.primary,
  // //         ),
  // //         const SizedBox(width: 8),
  // //         Text(
  // //           "Saudações!",
  // //           style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
  // //         ),
  // //       ],
  // //     ),
  // //   );
  // // }
  //
  // Widget _buildNameAndRole() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         "Henrique Sousa",
  //         style: TextStyle(
  //           color: textColor,
  //           fontSize: 36,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       Text(
  //         "Front-end developer · UI designer",
  //         style: TextStyle(
  //           color: textColor.withOpacity(0.7),
  //           fontSize: 18,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Widget _buildSocialLinks() {
  //   return Row(
  //     children: [
  //       _buildSocialIcon(
  //           Icons.linked_camera_outlined), // LinkedIn icon placeholder
  //       _buildSocialIcon(Icons.code), // GitHub icon placeholder
  //       _buildSocialIcon(Icons.camera_alt_outlined), // Behance icon placeholder
  //     ],
  //   );
  // }

//   Widget _buildSocialIcon(IconData icon) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 16.0),
//       child: Icon(
//         icon,
//         color: textColor.withOpacity(0.7),
//         size: 30,
//       ),
//     );
//   }
//
//   Widget _buildAvatarSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SvgPicture.asset(AppIcons.avatar,height: 600, width: 550,),
//         const SizedBox(height: 16),
//         _buildTechnologyIcons(),
//         const SizedBox(height: 16),
//         _buildActionButtons(),
//       ],
//     );
//   }
//
//   Widget _buildTechnologyIcons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         _buildTechIcon(Icons.code), // React icon placeholder
//         const SizedBox(width: 16),
//         _buildTechIcon(Icons.design_services), // Figma icon placeholder
//         const SizedBox(width: 16),
//         _buildTechIcon(Icons.language), // TypeScript icon placeholder
//       ],
//     );
//   }
//
//   Widget _buildTechIcon(IconData icon) {
//     return CircleAvatar(
//       radius: 20,
//       backgroundColor: Color(0xFF232341),
//       child: Icon(
//         icon,
//         color: textColor,
//         size: 20,
//       ),
//     );
//   }
//
//   Widget _buildActionButtons() {
//     return Column(
//       children: [
//         ElevatedButton.icon(
//           onPressed: () {},
//           icon: const Icon(Icons.download),
//           label: const Text("Baixar CV"),
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color(0xFF232341),
//             foregroundColor: textColor,
//           ),
//         ),
//         const SizedBox(height: 8),
//         OutlinedButton.icon(
//           onPressed: () {},
//           icon: const Icon(FontAwesomeIcons.whatsapp),
//           label: const Text("Vamos conversar"),
//           style: OutlinedButton.styleFrom(
//             backgroundColor: textColor,
//             side: BorderSide(color: purpleAccent),
//           ),
//         ),
//       ],
//     );
//   }
}
