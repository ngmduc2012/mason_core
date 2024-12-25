
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_core/flutter_core.dart';

/*
Learn more: https://docs.flutter.dev/cookbook/design/fonts

Value	Common weight name
100	Thin (Hairline)
200	Extra Light (Ultra Light)
300	Light
400	Normal
500	Medium
600	Semi Bold (Demi Bold)
700	Bold
800	Extra Bold (Ultra Bold)
900	Black (Heavy)

Learn more: https://api.flutter.dev/flutter/dart-ui/FontWeight-class.html

USE:
Text(...,
  style: context.h36B.copyWith(
                color: WebColor.darkBlue,
              ),
),
 */
extension ${{name.pascalCase()}}TextStyle on BuildContext{
  /*static const _neoTextStyle = TextStyle(
    fontFamily: {{name.pascalCase()}}FontFamily.nanumSquareNeo,
    fontFamilyFallback: [
      {{name.pascalCase()}}FontFamily.pretendard,
    ],
    package: 'dsg_ui_core', // Thêm thư viện front chữ từ package: https://api.flutter.dev/flutter/painting/TextStyle-class.html#:~:text=To%20use%20a%20font%20family%20defined%20in%20a%20package%2C%20the%20package%20argument%20must%20be%20provided.%20For%20instance%2C%20suppose%20the%20font%20declaration%20above%20is%20in%20the%20pubspec.yaml%20of%20a%20package%20named%20my_package%20which%20the%20app%20depends%20on.%20Then%20creating%20the%20TextStyle%20is%20done%20as%20follows%3A
    height: 1.5,
    leadingDistribution:  TextLeadingDistribution.even,
    color: {{name.pascalCase()}}Color.blackText555164,
  ); */
  static final _{{name.camelCase()}}TextStyle = GoogleFonts.inter().copyWith(
    fontWeight: FontWeight.w600,
    height: 1.5,
    leadingDistribution:  TextLeadingDistribution.even,
    // color: {{name.pascalCase()}}Color.blackText555164,
  );

  /// Edit ratio of fontSize for responsive screen
  double get {{name.camelCase()}}Ratio {
    final ratio = myWidth/1440;
    return ratio < 1 ? ratio < 0.6 ? 0.6 : ratio : 1;
  }

  TextStyle get h46B => _{{name.camelCase()}}TextStyle.copyWith(
    fontSize: 30.4*{{name.camelCase()}}Ratio,
    fontWeight: FontWeight.w500,
    color:  black,
  );



}