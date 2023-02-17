import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stack/provider/notify.dart';
import 'package:stack/screen/favourite.dart';

class ProviderExample extends StatelessWidget {
  ProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    ProviderClass item = Provider.of<ProviderClass>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(item.isLodaing ? 'lod' : 'text'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProviderFav(),
                ),
              );
            },
            icon: Icon(Icons.next_plan),
          )
        ],
      ),
      body: item.isLodaing
          ? Center(
              // child: Text('loading'),
              child: CupertinoActivityIndicator(
                color: Colors.green,
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                var data = item.user[index];
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: item.isLodaing
                          ? CupertinoActivityIndicator(
                              color: Colors.green,
                            )
                          : Image.network(data.image),
                    ),
                    title: Text(
                      data.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${data.gender}',
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${data.dateOfBirth ?? 'No Data'}',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    subtitle: Text(
                      data.actor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
