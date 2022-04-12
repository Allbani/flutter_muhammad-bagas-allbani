import 'package:database_provider/model/contact_model.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final ContactModel contact;
  final Function() onPressed;
  const ContactCard({Key? key, required this.contact, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(contact.name),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: const Text('Are you sure?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('NO'),
                        ),
                        TextButton(
                          onPressed: onPressed,
                          child: const Text('YES'),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete_forever_outlined),
              ),
            ],
          ),
          Text(contact.number)
        ],
      ),
    );
  }
}
