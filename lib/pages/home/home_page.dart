import 'package:flutter/material.dart';

import '../../models/poll.dart';
import '../my_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Poll>? _polls;
  var _isLoading = false;
  /*var _activeTabIndex = 0;
  VoteMenu? _currentPage = VoteMenu();*/

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    // todo: Load list of polls here
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        children: [
          Image.network(
              'https://cpsu-test-api.herokuapp.com/images/election.jpg'),

          /*Expanded(
            child: Stack(
              children: [
                if (_polls != null) _buildList(),
                if (_isLoading) _buildProgress(),
              ],
            ),
      ),*/


          Text(
              '1 บุคคลใดที่คุณจะสนับสนุนให้เป็นนายกรัฐมนตรีในการเลือกตั้งครั้งนี้',
              style: TextStyle(fontSize: 18, color: Colors.black)),
          Text(
            ' ',
            style: TextStyle(fontSize: 50),
          ),
          Text(
              '2 ในการเลือกตั้ง ส.ส. แบบแบ่งเขต คุณจะเลือกผู้สมัครจากพรรคการเมืองใด',
              style: TextStyle(fontSize: 18, color: Colors.black)),
          Text(
            ' ',
            style: TextStyle(fontSize: 50),
          ),
          Text(
              '3 ในการเลือกตั้ง ส.ส. แบบบัญชีรายชื่อ คุณจะเลือกผู้สมัครจากพรรคการเมืองใด',
              style: TextStyle(fontSize: 18, color: Colors.black)),
          /*Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('ดูผลโหวต'),
                )
              ],
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 48.0),
            child: ElevatedButton(
              onPressed: (){},
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('ดูผลโหวต',),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListView _buildList() {
    return ListView.builder(
      itemCount: _polls!.length,
      itemBuilder: (BuildContext context, int index) {
        // todo: Create your poll item by replacing this Container()
        return Container();
      },
    );
  }

  Widget _buildProgress() {
    return Container(
      color: Colors.black.withOpacity(0.6),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircularProgressIndicator(color: Colors.white),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('รอสักครู่', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
