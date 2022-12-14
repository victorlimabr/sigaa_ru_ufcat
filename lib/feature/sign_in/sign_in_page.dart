import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sigaa_ru_ufcat/feature/sheet_picker_page/sheet_picker_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Center(
          child: SizedBox(
            width: 600,
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(flex: 2),
                  _title(),
                  const Spacer(flex: 1),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Stack(
                      children: [
                        _backgroundShape(),
                        _formContent(context),
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _formContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 36),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(flex: 2, child: _formFields()),
          Expanded(flex: 1, child: _enterButton(context)),
        ],
      ),
    );
  }

  Text _title() {
    return const Text(
      'Sistema de verificação de beneficiários do Restaurante Universitario',
      textAlign: TextAlign.center,
    );
  }

  Column _formFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 36),
          child: Text('Favor entre com suas credenciais'),
        ),
        _textField('E-mail'),
        _textField('Senha'),
      ],
    );
  }

  Container _enterButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: const Color(0xFF20BEA9)),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      margin: const EdgeInsets.only(bottom: 56, left: 40),
      child: TextButton(
        onPressed: () => _navigateToSheetPicker(context),
        child: const Text('Entrar', textAlign: TextAlign.center),
      ),
    );
  }

  Future<dynamic> _navigateToSheetPicker(BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const SheetPickerPage()),
    );
  }

  Center _backgroundShape() {
    return Center(
      child: Opacity(
        opacity: 0.12,
        child: SvgPicture.asset(
          'assets/graphics/login_shape.svg',
          fit: BoxFit.contain,
          allowDrawingOutsideViewBox: true,
        ),
      ),
    );
  }

  Widget _textField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Expanded(flex: 1, child: Text(label)),
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 36,
              child: TextFormField(
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Color(0xFF707070)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
