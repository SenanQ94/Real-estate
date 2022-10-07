import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';

class ContactsInfo extends StatelessWidget {
  const ContactsInfo({Key? key}) : super(key: key);

  Widget buildContactInfo({
    required String title,
    required String text,
    required BuildContext context,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: MediaQuery.of(context).size.width > 1024 &&
                    MediaQuery.of(context).size.width < 1200
                ? TextStyle(fontSize: 11, color: Colors.white)
                : TextStyle(color: Colors.white),
          ),
          Text(
            text,
            style: MediaQuery.of(context).size.width > 1024 &&
                    MediaQuery.of(context).size.width < 1200
                ? TextStyle(fontSize: 10)
                : TextStyle(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Address',
          text: 'Gehrhard Str 3',
          context: context,
        ),
        buildContactInfo(
          title: 'Country',
          text: 'Germany',
          context: context,
        ),
        buildContactInfo(
          title: 'Phone Number',
          text: '+49 1788524763',
          context: context,
        ),
        buildContactInfo(
          title: 'Email',
          text: 'Sinan@gmail.com',
          context: context,
        ),
        buildContactInfo(
          title: 'Website',
          text: 'www.realestate.com',
          context: context,
        ),
      ],
    );
  }
}
