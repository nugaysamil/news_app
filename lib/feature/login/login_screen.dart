import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/generation/colors.gen.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _BaseImage(),
            SizedBox(height: 20),
            _LoginScreenTitle(),
            SizedBox(height: 20),
            _TextFormFieldText(
              label: StringConstant.emailAdress,
            ),
            EmailFormField(),
            _TextFormFieldText(
              label: StringConstant.password,
            ),
            PasswordFormField(),
            _ForgotAndRemember(),
            SizedBox(height: 20),
            _LoginButton(),
            SizedBox(height: 20),
            _OrSignInWith(),
            SizedBox(height: 20),
            _FacebookAndGoogle(),
            SizedBox(height: 20),
            _DontHaveAccount(),
          ],
        ),
      ),
    );
  }
}

class _DontHaveAccount extends StatelessWidget {
  const _DontHaveAccount();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringConstant.dontHaveAccount,
          style: AppStyles.latoTextStyle(
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            StringConstant.signUp,
            style: GoogleFonts.lato(
              color: Colors.orange,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}

class _FacebookAndGoogle extends StatelessWidget {
  const _FacebookAndGoogle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SocialButton(
            text: StringConstant.facebook,
            iconPath: Assets.icons.facebook.path,
            backgroundColor: Colors.orange[50],
            onPressed: () {},
          ),
          SizedBox(width: 10),
          SocialButton(
            text: StringConstant.google,
            iconPath: Assets.icons.google.path,
            backgroundColor: Colors.orange[50],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _BaseImage extends StatelessWidget {
  const _BaseImage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Assets.images.baseImage.path,
      ),
    );
  }
}

class _OrSignInWith extends StatelessWidget {
  const _OrSignInWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        StringConstant.orSignInWith,
        style: AppStyles.latoTextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          StringConstant.login,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: 160,
            vertical: 15,
          ),
          backgroundColor: ColorName.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}

class _LoginScreenTitle extends StatelessWidget {
  const _LoginScreenTitle();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringConstant.welcomeBack,
          style: AppStyles.montserratTextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          StringConstant.startExploring,
          style: AppStyles.latoTextStyle(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _ForgotAndRemember extends StatelessWidget {
  const _ForgotAndRemember();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (bool? newValue) {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                side: BorderSide(
                  color: Colors.orange,
                ),
              ),
              Text(
                StringConstant.rememberMe,
                style: AppStyles.latoTextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Text(
            StringConstant.forgotPassword,
            style: AppStyles.latoTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _TextFormFieldText extends StatelessWidget {
  final String label;

  const _TextFormFieldText({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        label,
        style: AppStyles.latoTextStyle(fontSize: 14),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class EmailFormField extends StatelessWidget {
  const EmailFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({Key? key}) : super(key: key);

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: TextFormField(
          obscureText: _obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.orange,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const SocialButton({
    required this.text,
    required this.iconPath,
    this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Image.asset(iconPath, height: 24),
      label: Text(
        text,
        style: AppStyles.latoTextStyle(
          fontSize: 14,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: ColorName.lightOrange,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      ),
    );
  }
}
