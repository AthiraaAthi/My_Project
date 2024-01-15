import 'package:flutter/material.dart';
import 'package:my_project/utils/font_constsnt/font_constant.dart';

import '../../utils/color_constant/color_constant.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.MainGreen,
        title: Text(
          "Terms & Conditions",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''1. Acceptance of Terms

By accessing or using the Waste Management App, you agree to comply with and be bound by these Terms and Conditions. If you do not agree with any part of these terms, you may not use the app.

2. User Responsibilities

You are responsible for the proper disposal of waste in accordance with local regulations. The app provides information and tools, but ultimate responsibility lies with the user.

3. Data Privacy

We collect and process user data in accordance with our Privacy Policy. By using the app, you consent to the collection and use of your information as described in the Privacy Policy.

4. App Content

All content provided by the app is for informational purposes only. We do not guarantee the accuracy, completeness, or usefulness of any information provided.

5. Prohibited Activities

Users are prohibited from engaging in any unlawful or harmful activities while using the app. This includes but is not limited to the dissemination of harmful content, hacking, or any other illegal activities.

6. Intellectual Property

The app and its original content, features, and functionality are owned by our Company and are protected by international copyright, trademark, patent, trade secret, and other intellectual property or proprietary rights laws.

7. Updates and Changes

We reserve the right to modify or update these Terms and Conditions at any time without prior notice. Continued use of the app after any changes shall constitute your consent to such changes.

8. Termination

We reserve the right to terminate or suspend your access to the app immediately, without prior notice or liability, for any reason, including breach of these Terms and Conditions.

9. Limitation of Liability

In no event shall [Your Company] be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues, whether incurred directly or indirectly.

10. Governing Law

These Terms and Conditions shall be governed by and construed in accordance with the laws of our Jurisdiction, without regard to its conflict of law principles.

   By using the Wastico App, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions.
      ''',
                  style: FontConstant.Poppins,
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
