import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding (
      padding: const EdgeInsets.only(top: 7.0, left: 18.0, right: 18.0, bottom: 18.0),
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              Container(
                height: 50,
                width: 250,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Search for restaurants...",
                        border: InputBorder.none),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}