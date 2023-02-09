import 'package:flutter/Material.dart';
import 'package:provider/provider.dart';
import 'package:stack/provider/notify.dart';

class ProviderFav extends StatelessWidget {
  ProviderFav({super.key});
  bool isLodaing = false;

  @override
  Widget build(BuildContext context) {
    var item = Provider.of<BoolProvider>(context).dataModel;
    var favList = Provider.of<FavProvider>(context).favList;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size((MediaQuery.of(context).size.width - 20), 50),
              ),
              onPressed: () {},
              child: Text('My LIst Data (${favList.length})'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  var currentdata = item[index];
                  return Card(
                    child: ListTile(
                      title: Text(
                        currentdata.title,
                      ),
                      subtitle: Text(
                        'Random ${currentdata.subtitle ?? ''}',
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          if (!favList.contains(currentdata)) {
                            // context.read<FavProvider>().addData(currentdata);
                            Provider.of<FavProvider>(context, listen: false)
                                .addData(currentdata);
                          } else {
                            Provider.of<FavProvider>(context, listen: false)
                                .removeData(currentdata);
                          }
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: favList.contains(currentdata)
                              ? Colors.red
                              : Colors.grey,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
