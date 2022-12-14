import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class SheetPickerPage extends StatelessWidget {
  const SheetPickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Center(
          child: SizedBox(
            width: 600,
            child: Row(
              children: [
                const Text('Insira seu arquivo'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: _pdfPickButton(),
                    ),
                    //const Text('ou arraste e solte o PDF aqui')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlinedButton _pdfPickButton() {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          const Color(0xfff5e3e3).withOpacity(0.57),
        ),
        foregroundColor: const MaterialStatePropertyAll(Colors.black),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 160),
        ),
      ),
      onPressed: () {
        FilePickerWeb.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['pdf'],
        );
      },
      child: const Text('Selecionar arquivo PDF'),
    );
  }
}
