import 'package:flutter/material.dart';

Color primaryColor = Color(0xff181818);
Color secColor = Color(0xff404040);
Color thirdColor = Color(0xffB3B3B3);

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        leading: Icon(Icons.account_circle),
        actions: [
          Icon(Icons.exit_to_app),
          SizedBox(width: 10),
        ],
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 30),
            imgProfile(),
            SizedBox(height: 20),
            Text(
              'Eslam Fares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'examplename@gmail.com',
              style: TextStyle(fontSize: 16, color: thirdColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            changeProfileImage(),
            SizedBox(height: 50),
            showData(leadindIcon: Icons.location_on, text: 'Mansoura, Egypt'),
            showData(
                leadindIcon: Icons.school,
                text: 'Facualty of Computer and Informaion'),
            showData(leadindIcon: Icons.work, text: 'Flutter Devolper'),
            showData(leadindIcon: Icons.height, text: '180 cm'),
            showData(leadindIcon: Icons.settings, text: 'settings'),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }

  Widget showData({@required IconData leadindIcon, @required String text}) {
    return Container(
      height: 43,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: secColor, borderRadius: BorderRadius.circular(50)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(leadindIcon),
          SizedBox(width: 15),
          Text(
            text.length > 25 ? '${text.substring(0, 22)}...' : text,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios_outlined),
        ],
      ),
    );
  }

  Widget changeProfileImage() {
    return GestureDetector(
      onTap: () => print('Change Profile Image'),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 80),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
            child: Text(
          'Change Profile Image',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }

  Widget imgProfile() {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width - 250),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: secColor,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
              'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
