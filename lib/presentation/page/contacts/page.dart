import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_phone_dialer/backbone/dependency_injection.dart'
    as di;
import 'package:neumorphic_phone_dialer/presentation/bloc/base.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/contacts/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/page/contacts/components/header.dart';
import 'package:neumorphic_phone_dialer/presentation/page/contacts/components/item.dart';
import 'package:neumorphic_phone_dialer/presentation/page/contacts/components/search_bar.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/widget/appbar.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  late final ContactsBloc _contactsBloc = di.sl.get();

  @override
  void initState() {
    super.initState();
    _contactsBloc.add(
      const ContactsEvent.loadContacts(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: -10,
        intensity: 1,
        shadowLightColorEmboss: AppTheme.of(context).colors.shadowLightColor,
        shadowDarkColorEmboss: AppTheme.of(context).colors.shadowDarkColor,
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
            const SizedBox(
              height: 45,
            ),
            ContactsSearchBar(),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: BlocBuilder<ContactsBloc, ContactsState>(
                bloc: _contactsBloc,
                builder: (_, ContactsState state) {
                  if (state.status == BlocStatus.loaded) {
                    return ListView.builder(
                      padding: const EdgeInsets.only(top: 34),
                      itemCount: state.contacts.length,
                      itemBuilder: (_, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: ContactsItem(
                            callBloc: di.sl.get(),
                            contact: state.contacts[index],
                          ),
                        );
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
