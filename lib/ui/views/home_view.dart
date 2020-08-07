import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 190,
                          color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "850",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                trailing: Icon(
                                  LineIcons.cubes,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text('Minerais',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w800,
                                    )),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 120,
                          color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                trailing: Icon(
                                  LineIcons.info,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Autres Informations',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 120,
                          color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "20",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                trailing: Icon(
                                  LineIcons.building_o,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Entreprises Minières',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 190,
                          color: Colors.yellow,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  "25 Pays",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                trailing: Icon(
                                  LineIcons.map_marker,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Destinations',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
