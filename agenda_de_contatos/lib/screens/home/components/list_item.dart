import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.star),
        color: Theme.of(context).colorScheme.secondary,
      ),
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/Nicole.jpg"),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nicole",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "+55 51 11111-1111",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.chevron_right,
        ),
        onPressed: () {},
      ),
    );
  }
}
