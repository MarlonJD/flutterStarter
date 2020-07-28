import 'package:cached_network_image/cached_network_image.dart';
import 'package:domainchecker/src/bloc/photo/photo.dart';
import 'package:domainchecker/src/models/network_data_models/photo/response/photo_response.dart';
import 'package:domainchecker/src/network/repository/api_repository.dart';
import 'package:domainchecker/src/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';

class ExampleBlocWidget extends StatefulWidget {
  ExampleBlocWidget({Key key}) : super(key: key);

  @override
  _ExampleBlocWidgetState createState() => _ExampleBlocWidgetState();
}

class _ExampleBlocWidgetState extends State<ExampleBlocWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final apiRepository = ApiRepository();
    return CustomScrollView(primary: false, slivers: <Widget>[
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Container(
                constraints: BoxConstraints(
                  maxHeight: size.width * .50,
                ),
                child: MultiBlocProvider(
                    providers: [
                      BlocProvider(create: (context) {
                        return PhotoBloc(apiRepository: apiRepository)
                          ..add(GetPhotoEvent());
                      })
                    ],
                    child: BlocBuilder<PhotoBloc, PhotoState>(
                        builder: (BuildContext context, state) {
                      if (state is PhotoLoadState) {
                        return ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return index >= state.response.length
                                ? Text('Loading')
                                : PrintPhotoWidget(
                                    photo: state.response[index],
                                  );
                          },
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical:15),
                          scrollDirection: Axis.horizontal,
                        );
                      } else {
                        return Container(
                          width: 0,
                          height: 0,
                        );
                      }
                    }))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Center(
                child: Text("Starter Text Item"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Center(
                child: Text("Starter Text Item"),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}

class PrintPhotoWidget extends StatelessWidget {
  final PhotoResponse photo;
  const PrintPhotoWidget({Key key, @required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        child: AspectRatio(
            aspectRatio: 1 / 1,
            child: GFImageOverlay(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.verified_user,
                                size: 16,
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                              ))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.verified_user,
                                size: 16,
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                              ))),
                    ]),
                    Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                photo.title,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Spor Salonu ${photo.id.toString()}",
                                style: TextStyle(
                                    color: AppColors.subtitleColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                            ])),
                  ],
                ),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.20), BlendMode.darken),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: CachedNetworkImageProvider(photo.url))),
        onTap: () {},
      ),
    );
  }
}
