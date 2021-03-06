import 'package:flutter/material.dart';
import 'package:prescription_app/new/doc_sign.dart';
import 'package:prescription_app/new/about_us.dart';
import 'package:prescription_app/screens/Home/home_screen.dart';

class AppDrawer extends StatelessWidget {
  final AppBar appBar;

  AppDrawer(this.appBar);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).size.height * 0.01) *
                  0.3
                  : (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).size.height * 0.07) *
                  0.5,
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo.png',fit: BoxFit.fill,),
            ),
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).size.height * 0.01) *
                  0.82
                  : (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).size.height * 0.07) *
                  0.9,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  InkWell(
                    onTap: ()=>Navigator.push(context, new MaterialPageRoute (
        builder: (context) => new DocSign())
      ),
                    child: ListTile(
                      leading: Icon(
                        Icons.save,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        "Edit signature",
                        style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Aleo'),
                      ),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: ()=>Navigator.push(context, new MaterialPageRoute (
        builder: (context) => new HomeScreen())
      ),
                    child: ListTile(
                      leading: Icon(
                        Icons.save,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        "Return to Home Screen",
                        style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Aleo'),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}