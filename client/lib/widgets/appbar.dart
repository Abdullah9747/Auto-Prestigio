import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  final bool logo, search, filter;
  const Appbar({
    super.key,
    required this.logo,
    required this.search,
    required this.filter,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
          width: double.infinity,
          color: Theme.of(context).colorScheme.primary,
          child: SafeArea(
              child: Column(
            children: [
              if (logo)
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 16),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 200,
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (search)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: logo ? 15 : 0,
                          horizontal: 5,
                        ).copyWith(left: 16),
                        child: SizedBox(
                          height: 45,
                          child: TextField(
                            cursorColor: Colors.grey.shade600,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,
                                  color: Colors.grey.shade600),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "search",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (filter)
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/filtericon.png",
                        width: 30,
                      ),
                    )
                ],
              )
            ],
          ))),
    );
  }
}
