import 'package:flutter/material.dart';


class JobRecruiterinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xfffaf6e9) ,
      body: Container(decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/photo-of-man-standing-in-front-of-mango-tree-with-his-arms-2280574 (1).jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.dstATop))),
        child: Column(
          children: <Widget>[
            Container(alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              height: 50,
              child: Text(
                "JOB RECRUITER",
                style: TextStyle(fontSize: 26, fontFamily: 'Montserrat'),
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
            Spacer(),Row(children: <Widget>[Container(color: Colors.grey,),Container(color: Colors.green,)],)

           
          ],
          
        ),
      ),
    );
  }
}