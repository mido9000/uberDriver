import 'package:flutter/material.dart';
import 'package:foralldriver/provider/colorProvider.dart';

class EarningsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EarningsView();
  }
}

class EarningsView extends StatefulWidget {
  @override
  _EarningsViewState createState() => _EarningsViewState();
}

const kExpandedHeight = 300.0;

class _EarningsViewState extends State<EarningsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 560,
        child: Stack(alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10,),
                          IconButton(onPressed: ()=> Navigator.pop(context),
                            icon: Icon(Icons.keyboard_backspace,
                              color: Colors.white, size: 25,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Earnings", style: TextStyle(color: Colors.white, fontSize: 28),)
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.help, color: Colors.white,),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("This week", style: TextStyle(color: Colors.white, fontSize: 20),),
                  SizedBox(height: 14,),
                  Text("\$3.60", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 11, offset: Offset(3.0, 4.0))],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        onTap: () => Navigator.pushNamed(context, "/earningsDetailsPage"),
                        title: Text("Earning Details", style: TextStyle(fontSize: 18)),
                        subtitle: Container(margin: EdgeInsets.only(top: 8),
                            child: Text("Sep 17 - Sep 24", style: TextStyle(fontSize: 14))),
                        leading: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(color: ColorProvider().primaryColor, shape: BoxShape.circle),
                          child: Icon(Icons.lightbulb_outline, color: Colors.white, size: 20,
                          ),
                        ),
                        trailing: Icon(Icons.chevron_right, color: Colors.black, size: 20),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: ListTile(
                        onTap: () => Navigator.pushNamed(context, "/recentTransactionsPage"),
                        title: Text("Recent transactions", style: TextStyle(fontSize: 20)),
                        subtitle: Container(margin: EdgeInsets.only(top: 10),
                            child: Text("\$3.60 balance", style: TextStyle(fontSize: 16))),
                        leading: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(color: ColorProvider().primaryColor, shape: BoxShape.circle),
                          child: Icon(Icons.lightbulb_outline, color: Colors.white, size: 20,
                          ),
                        ),
                        trailing: Icon(Icons.chevron_right, color: Colors.black, size: 20),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: ListTile(
                        onTap: () => Navigator.pushNamed(context, "/promotionsPage"),
                        title: Text("Promotions", style: TextStyle(fontSize: 20)),
                        subtitle: Container(margin: EdgeInsets.only(top: 10), child: Text("See what's available", style: TextStyle(fontSize: 16))),
                        leading: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(color: ColorProvider().primaryColor, shape: BoxShape.circle),
                          child: Icon(Icons.lightbulb_outline, color: Colors.white, size: 20,
                          ),
                        ),
                        trailing: Icon(Icons.chevron_right, color: Colors.black, size: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
