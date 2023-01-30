import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';

class AppDialerDeleteButton extends StatelessWidget {
  const AppDialerDeleteButton({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 30,
        maxWidth: 50,
      ),
      child: NeumorphicButton(
        minDistance: -3,
        padding: const EdgeInsets.only(
          left: 22,
          right: 12,
          top: 8,
          bottom: 8,
        ),
        style: NeumorphicStyle(
          color: AppTheme.of(context).colors.buttonColor,
          shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
          shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
          border: NeumorphicBorder(
            color: AppTheme.of(context).colors.shadowLightColor,
          ),
          boxShape: NeumorphicBoxShape.path(
            DeleteButtonShapeProvider(),
          ),
        ),
        onPressed: () {
          final String text = controller.value.text;
          if (text.isNotEmpty && text.length > 2) {
            controller.text = text.substring(0, text.length - 1);
          } else {
            controller.clear();
          }
        },
        child: Center(
          child: Icon(
            Icons.close,
            color: AppTheme.of(context).colors.bodyTextColor,
            size: 16,
          ),
        ),
      ),
    );
  }
}

class DeleteButtonShapeProvider extends NeumorphicPathProvider {
  @override
  bool shouldReclip(NeumorphicPathProvider oldClipper) {
    return true;
  }

  @override
  Path getPath(Size size) => Path()
    ..moveTo(size.width * 0.1521613, size.height * 0.2478194)
    ..cubicTo(
        size.width * 0.1535865,
        size.height * 0.2459471,
        size.width * 0.1548787,
        size.height * 0.2442818,
        size.width * 0.1555370,
        size.height * 0.2434788)
    ..cubicTo(
        size.width * 0.1564122,
        size.height * 0.2423118,
        size.width * 0.1572957,
        size.height * 0.2412788,
        size.width * 0.1581213,
        size.height * 0.2404006)
    ..lineTo(size.width * 0.2523383, size.height * 0.1145900)
    ..lineTo(size.width * 0.2665039, size.height * 0.09570118)
    ..cubicTo(
        size.width * 0.2694948,
        size.height * 0.09171294,
        size.width * 0.2719761,
        size.height * 0.08847882,
        size.width * 0.2767370,
        size.height * 0.08234176)
    ..cubicTo(
        size.width * 0.2781078,
        size.height * 0.08057471,
        size.width * 0.2794909,
        size.height * 0.07881882,
        size.width * 0.2808087,
        size.height * 0.07697882)
    ..cubicTo(
        size.width * 0.2823317,
        size.height * 0.07484118,
        size.width * 0.2832513,
        size.height * 0.07355529,
        size.width * 0.2838522,
        size.height * 0.07275412)
    ..cubicTo(
        size.width * 0.2966809,
        size.height * 0.05562765,
        size.width * 0.3114157,
        size.height * 0.04124471,
        size.width * 0.3279361,
        size.height * 0.02984176)
    ..cubicTo(
        size.width * 0.3440517,
        size.height * 0.01915059,
        size.width * 0.3612383,
        size.height * 0.01160941,
        size.width * 0.3793835,
        size.height * 0.007357059)
    ..cubicTo(
        size.width * 0.3958009,
        size.height * 0.003848235,
        size.width * 0.4123904,
        size.height * 0.001960000,
        size.width * 0.4282226,
        size.height * 0.001734706)
    ..cubicTo(
        size.width * 0.4345022,
        size.height * 0.001399412,
        size.width * 0.4393804,
        size.height * 0.001334706,
        size.width * 0.4497022,
        size.height * 0.001340000)
    ..cubicTo(
        size.width * 0.4564196,
        size.height * 0.001190588,
        size.width * 0.4618326,
        size.height * 0.001153529,
        size.width * 0.4728717,
        size.height * 0.001150000)
    ..cubicTo(
        size.width * 0.4586935,
        size.height * 0.001149412,
        size.width * 0.4498239,
        size.height * 0.001149412,
        size.width * 0.4488109,
        size.height * 0.001149412)
    ..lineTo(size.width * 0.4750239, size.height * 0.001149412)
    ..cubicTo(
        size.width * 0.4742848,
        size.height * 0.001149412,
        size.width * 0.4735674,
        size.height * 0.001149412,
        size.width * 0.4728717,
        size.height * 0.001150000)
    ..cubicTo(
        size.width * 0.5465543,
        size.height * 0.001151176,
        size.width * 0.7636543,
        size.height * 0.001156471,
        size.width * 0.7665848,
        size.height * 0.001172941)
    ..cubicTo(
        size.width * 0.7712326,
        size.height * 0.001198824,
        size.width * 0.7753630,
        size.height * 0.001251176,
        size.width * 0.7788978,
        size.height * 0.001334706)
    ..cubicTo(
        size.width * 0.7896848,
        size.height * 0.001334706,
        size.width * 0.7945630,
        size.height * 0.001399412,
        size.width * 0.8000674,
        size.height * 0.001707647)
    ..cubicTo(
        size.width * 0.8167196,
        size.height * 0.001977059,
        size.width * 0.8333370,
        size.height * 0.003862353,
        size.width * 0.8502674,
        size.height * 0.007457647)
    ..cubicTo(
        size.width * 0.8679196,
        size.height * 0.01162647,
        size.width * 0.8850283,
        size.height * 0.01918059,
        size.width * 0.9012196,
        size.height * 0.02999765)
    ..cubicTo(
        size.width * 0.9175196,
        size.height * 0.04106529,
        size.width * 0.9323935,
        size.height * 0.05552706,
        size.width * 0.9451978,
        size.height * 0.07273353)
    ..cubicTo(
        size.width * 0.9580457,
        size.height * 0.08985824,
        size.width * 0.9688022,
        size.height * 0.1095576,
        size.width * 0.9772326,
        size.height * 0.1315035)
    ..cubicTo(
        size.width * 0.9852500,
        size.height * 0.1529918,
        size.width * 0.9909065,
        size.height * 0.1759082,
        size.width * 0.9940978,
        size.height * 0.2001312)
    ..cubicTo(
        size.width * 0.9967152,
        size.height * 0.2220053,
        size.width * 0.9981283,
        size.height * 0.2441053,
        size.width * 0.9983109,
        size.height * 0.2652247)
    ..cubicTo(
        size.width * 0.9984457,
        size.height * 0.2696859,
        size.width * 0.9985239,
        size.height * 0.2741659,
        size.width * 0.9985891,
        size.height * 0.2801365)
    ..lineTo(size.width * 0.9986413, size.height * 0.2848712)
    ..cubicTo(
        size.width * 0.9986848,
        size.height * 0.2894282,
        size.width * 0.9987065,
        size.height * 0.2914635,
        size.width * 0.9987500,
        size.height * 0.2946676)
    ..lineTo(size.width * 0.9987457, size.height * 0.7059494)
    ..cubicTo(
        size.width * 0.9987065,
        size.height * 0.7084671,
        size.width * 0.9986848,
        size.height * 0.7105082,
        size.width * 0.9986413,
        size.height * 0.7151494)
    ..cubicTo(
        size.width * 0.9985457,
        size.height * 0.7249200,
        size.width * 0.9984804,
        size.height * 0.7293318,
        size.width * 0.9983326,
        size.height * 0.7339494)
    ..cubicTo(
        size.width * 0.9981543,
        size.height * 0.7563847,
        size.width * 0.9966848,
        size.height * 0.7787729,
        size.width * 0.9939109,
        size.height * 0.8010788)
    ..cubicTo(
        size.width * 0.9908587,
        size.height * 0.8249435,
        size.width * 0.9851848,
        size.height * 0.8480788,
        size.width * 0.9769326,
        size.height * 0.8701141)
    ..cubicTo(
        size.width * 0.9685674,
        size.height * 0.8918141,
        size.width * 0.9577370,
        size.height * 0.9116671,
        size.width * 0.9448370,
        size.height * 0.9289376)
    ..cubicTo(
        size.width * 0.9318630,
        size.height * 0.9463200,
        size.width * 0.9168978,
        size.height * 0.9608435,
        size.width * 0.9005065,
        size.height * 0.9719435)
    ..cubicTo(
        size.width * 0.8842326,
        size.height * 0.9829729,
        size.width * 0.8668022,
        size.height * 0.9906435,
        size.width * 0.8486848,
        size.height * 0.9947318)
    ..cubicTo(
        size.width * 0.8321543,
        size.height * 0.9983612,
        size.width * 0.8154457,
        size.height * 1.000379,
        size.width * 0.7987500,
        size.height * 1.000773)
    ..cubicTo(
        size.width * 0.7956761,
        size.height * 1.000849,
        size.width * 0.7932717,
        size.height * 1.000891,
        size.width * 0.7879239,
        size.height * 1.000961)
    ..cubicTo(
        size.width * 0.7827543,
        size.height * 1.001032,
        size.width * 0.7804717,
        size.height * 1.001067,
        size.width * 0.7770935,
        size.height * 1.001149)
    ..lineTo(size.width * 0.4496109, size.height * 1.001144)
    ..cubicTo(
        size.width * 0.4468413,
        size.height * 1.001067,
        size.width * 0.4445848,
        size.height * 1.001032,
        size.width * 0.4394717,
        size.height * 1.000961)
    ..cubicTo(
        size.width * 0.4341717,
        size.height * 1.000891,
        size.width * 0.4317939,
        size.height * 1.000849,
        size.width * 0.4289322,
        size.height * 1.000773)
    ..cubicTo(
        size.width * 0.4123030,
        size.height * 1.000455,
        size.width * 0.3957139,
        size.height * 0.9985024,
        size.width * 0.3789665,
        size.height * 0.9948494)
    ..cubicTo(
        size.width * 0.3612383,
        size.height * 0.9906906,
        size.width * 0.3440517,
        size.height * 0.9831494,
        size.width * 0.3275352,
        size.height * 0.9721847)
    ..cubicTo(
        size.width * 0.3114157,
        size.height * 0.9610553,
        size.width * 0.2966809,
        size.height * 0.9466729,
        size.width * 0.2838643,
        size.height * 0.9295612)
    ..cubicTo(
        size.width * 0.2832513,
        size.height * 0.9287435,
        size.width * 0.2823317,
        size.height * 0.9274553,
        size.width * 0.2807465,
        size.height * 0.9252318)
    ..cubicTo(
        size.width * 0.2804417,
        size.height * 0.9248082,
        size.width * 0.2794491,
        size.height * 0.9234612,
        size.width * 0.2787957,
        size.height * 0.9226082)
    ..cubicTo(
        size.width * 0.2727635,
        size.height * 0.9148435,
        size.width * 0.2700130,
        size.height * 0.9112729,
        size.width * 0.2667135,
        size.height * 0.9068788)
    ..lineTo(size.width * 0.2663643, size.height * 0.9064141)
    ..cubicTo(
        size.width * 0.2619952,
        size.height * 0.9005906,
        size.width * 0.1565926,
        size.height * 0.7601376,
        size.width * 0.1561409,
        size.height * 0.7596024)
    ..cubicTo(
        size.width * 0.1535635,
        size.height * 0.7563671,
        size.width * 0.1509957,
        size.height * 0.7529553,
        size.width * 0.1485509,
        size.height * 0.7495200)
    ..cubicTo(
        size.width * 0.1462570,
        size.height * 0.7466024,
        size.width * 0.1442765,
        size.height * 0.7439906,
        size.width * 0.1402443,
        size.height * 0.7386141)
    ..lineTo(size.width * 0.05401435, size.height * 0.6234494)
    ..lineTo(size.width * 0.04582000, size.height * 0.6125259)
    ..cubicTo(
        size.width * 0.04359000,
        size.height * 0.6095494,
        size.width * 0.04195217,
        size.height * 0.6072671,
        size.width * 0.03918652,
        size.height * 0.6033082)
    ..cubicTo(
        size.width * 0.03188174,
        size.height * 0.5937318,
        size.width * 0.02497435,
        size.height * 0.5836376,
        size.width * 0.01849478,
        size.height * 0.5730618)
    ..cubicTo(
        size.width * 0.01246130,
        size.height * 0.5644859,
        size.width * 0.007613478,
        size.height * 0.5545476,
        size.width * 0.004180000,
        size.height * 0.5437065)
    ..lineTo(size.width * 0.003343478, size.height * 0.5407100)
    ..cubicTo(
        size.width * -0.002903043,
        size.height * 0.5149941,
        size.width * -0.002903043,
        size.height * 0.4873053,
        size.width * 0.004109130,
        size.height * 0.4588176)
    ..cubicTo(
        size.width * 0.007515217,
        size.height * 0.4478624,
        size.width * 0.01239217,
        size.height * 0.4378347,
        size.width * 0.01849609,
        size.height * 0.4292241)
    ..cubicTo(
        size.width * 0.02496957,
        size.height * 0.4185706,
        size.width * 0.03187783,
        size.height * 0.4084788,
        size.width * 0.03842913,
        size.height * 0.4000247)
    ..cubicTo(
        size.width * 0.04195217,
        size.height * 0.3950329,
        size.width * 0.04359000,
        size.height * 0.3927488,
        size.width * 0.04582000,
        size.height * 0.3897753)
    ..cubicTo(
        size.width * 0.04981696,
        size.height * 0.3844453,
        size.width * 0.05153739,
        size.height * 0.3821229,
        size.width * 0.05401435,
        size.height * 0.3786641)
    ..lineTo(size.width * 0.1485930, size.height * 0.2525529)
    ..cubicTo(
        size.width * 0.1503022,
        size.height * 0.2502735,
        size.width * 0.1511278,
        size.height * 0.2491765,
        size.width * 0.1521613,
        size.height * 0.2478194)
    ..close();

  @override
  bool get oneGradientPerPath => true;
}
