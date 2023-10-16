import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/model/album.dart';
import 'package:provider_sample/provider/album_provider.dart';
import 'package:provider_sample/view/plus_view.dart';

class AlbumView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  List<Album> albumList = [];

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<AlbumProvider>(context, listen: false).fetchAlbums();

    // context.read<AlbumProvider>().fetchAlbums();

    // context.watch<AlbumProvider>().alList;
    // AlbumProvider provier = AlbumProvider();
    // provier.fetchAlbums();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies

    print('didChangeDependencies');

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    // albumList = context.read<AlbumProvider>().alList;

    return Scaffold(
      appBar: AppBar(title: const Text('Provider Album List')),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              context.read<AlbumProvider>().addList();
              // albumList.add(Album(userId: 999999, id: 88888888, title: 'test'));
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PlusWidget()));
            },
            child: Text('button'),
          ),
          Expanded(
            child:
                //     ListView.builder(
                //   itemCount: albumList.length,
                //   itemBuilder: (context, index) {
                //     return Container(
                //       padding: const EdgeInsets.all(15),
                //       child: Text('ssss$index'),
                //     );
                //   },
                // )

                Consumer<AlbumProvider>(
              builder: (context, provider, child) {
                // print('consumer $provider || ${provider.albumList.length}');
                albumList = provider.getAlbumList();
                // albumList = provider.getAlbumList();

                return ListView.builder(
                  itemCount: albumList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(15),
                      child: Text('ssss$index'),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
