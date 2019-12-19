import 'package:flutter/material.dart';

class JobSeekerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/agriculture-asia-countryside-cropland-235731 (1).jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.dstATop))),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              height: 50,
              child: Text(
                "JOB SEEKER",
                style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100].withOpacity(.5),
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatemqtore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora  Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
                    style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                     child: Placeholder(),height: 70,width: MediaQuery.of(context).size.width/2,
                    ),
                    Container(
                      child: Placeholder(),height: 70,width: MediaQuery.of(context).size.width/2,
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
