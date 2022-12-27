import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/presentation/page/contacts/components/header.dart';
import 'package:neumorphic_phone_dialer/presentation/page/contacts/components/search_bar.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/widget/appbar.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: -10,
        intensity: 1,
        //shadowDarkColorEmboss: Colors.red,
        shadowDarkColorEmboss: Color(0xff5a5e69),
        color: AppTheme.of(context).colors.background,
      ),
      child: Scaffold(
        appBar: ApplicationAppBar(
          leading: SizedBox(
            width: MediaQuery.of(context).size.width - 90,
            child: const ContactsHeader(),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            ContactsSearchBar(),
          ],
        ),
      ),
    );
  }
}
