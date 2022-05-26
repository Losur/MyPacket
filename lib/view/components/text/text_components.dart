import 'package:flutter/cupertino.dart';

class TextRegular extends StatelessWidget {
  final String text;
  final FontWeight? weight;

  const TextRegular(this.text, this.weight, {Key? key}) : super(key: key);
  const TextRegular.normalWeight(this.text, {Key? key}) : weight = FontWeight.normal, super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Text (
      text,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: weight??FontWeight.normal,
          fontFamily: 'Segue-UI',)
    );
  }
}

class TextSubregular extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;

  const TextSubregular(this.text, this.size, this.weight, {Key? key}) : super(key: key);
  const TextSubregular.onlyText(this.text, {Key? key}) : size = 10.0, weight = FontWeight.normal, super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Text (
        text,
        style: TextStyle(
          fontSize: size??10.0,
          fontWeight: weight??FontWeight.normal,
          fontFamily: 'Segue-UI',)
    );
  }
}

class TextTitle extends StatelessWidget {
final String text;
final FontWeight? weight;
final TextAlign? align;

const TextTitle(this.text, this.weight, this.align, {Key? key}) : super(key: key);
const TextTitle.customAlign(this.text, this.align, {Key? key}) : weight = FontWeight.normal, super(key: key) ;
const TextTitle.customWeight(this.text, this.weight, {Key? key}) : align = TextAlign.center, super(key: key);
const TextTitle.onlyText(this.text, {Key? key}) : align= TextAlign.left, weight = FontWeight.normal, super(key: key) ;


@override
Widget build(BuildContext context) {
  return Text (
      text,
      textAlign: align??TextAlign.left,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: weight??FontWeight.normal,
        fontFamily: 'Segue-UI',)
  );
}
}

class TextSubtitle extends StatelessWidget {
  final String text;
  final FontWeight? weight;

  const TextSubtitle(this.text, this.weight, {Key? key}) : super(key: key);
  const TextSubtitle.normalWeight(this.text, {Key? key}) : weight = FontWeight.normal, super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Text (
      text,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: weight??FontWeight.normal,
          fontFamily: 'Segue-UI',)
    );
  }
}