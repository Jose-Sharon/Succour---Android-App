import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:succour/Mood Tracker/databasesqf.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:succour/Mood Tracker/chart/moodPerReason.dart';
import 'package:succour/Mood Tracker/chart/moodOverTime.dart';
import 'package:succour/Mood Tracker/chart/graph.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

class AnalyticsPage extends StatefulWidget{
  
  AnalyticsPage();
  @override
  _AnalyticsPageState createState() => _AnalyticsPageState();

}

class _AnalyticsPageState extends State<AnalyticsPage> {
  int _currentIndex=0;
  
  List<Map<String, dynamic>> moodList = [];

  Future moodsFuture;

  @override
  void initState() {
    super.initState();
   moodsFuture = getData();
  }

  getMoods() async {
    final _moodsData = await DBProvider.db.getMood();
    return _moodsData;
  }
  
  getData() async {
    final _moodList = await getMoods();
    //var _moodList = await mo.data;
    if(_moodList==123)
    {
      return 123;
    }
    List<String> reasonNames=[
      "Family",
      "Friends",
      "Work",
      "Hobbies",
      "School",
      "Love",
      "Health",
      "Music",
      "Food",
      "News",
      "Weather",
      "Money"
    ];
    
    List<MoodPerReason> dataGoodAlltime = [
      MoodPerReason(
        reason:'Family',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Friends',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Work',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Hobbies',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'School',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Love',
        moodSum: 0,
        color:Colors.purple[300]
      ),
        MoodPerReason(
        reason:'Health',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Music',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      //
      MoodPerReason(
        reason:'Food',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'News',
        moodSum: 0,
        color:Colors.purple[300]
      ),
        MoodPerReason(
        reason:'Weather',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Money',
        moodSum: 0,
        color:Colors.purple[300]
      ),
    ];
    List<MoodPerReason> dataGoodMonth = [
      MoodPerReason(
        reason:'Family',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Friends',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Work',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Hobbies',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'School',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Love',
        moodSum: 0,
        color:Colors.purple[300]
      ),
        MoodPerReason(
        reason:'Health',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Music',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      //
      MoodPerReason(
        reason:'Food',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'News',
        moodSum: 0,
        color:Colors.purple[300]
      ),
        MoodPerReason(
        reason:'Weather',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Money',
        moodSum: 0,
        color:Colors.purple[300]
      ),
    ];
    List<MoodPerReason> dataGoodWeek= [
      MoodPerReason(
        reason:'Family',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Friends',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Work',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Hobbies',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'School',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Love',
        moodSum: 0,
        color:Colors.purple[300]
      ),
        MoodPerReason(
        reason:'Health',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Music',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      //
      MoodPerReason(
        reason:'Food',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'News',
        moodSum: 0,
        color:Colors.purple[300]
      ),
        MoodPerReason(
        reason:'Weather',
        moodSum: 0,
        color:Colors.purple[300]
      ),
      MoodPerReason(
        reason:'Money',
        moodSum: 0,
        color:Colors.purple[300]
      ),
    ];

    List<MoodPerReason> dataBadAlltime = [
      MoodPerReason(
        reason:'Family',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Friends',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Work',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Hobbies',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'School',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Love',
        moodSum: 0,
        color:Colors.purple[100]
      ),
        MoodPerReason(
        reason:'Health',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Music',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      //
      MoodPerReason(
        reason:'Food',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'News',
        moodSum: 0,
        color:Colors.purple[100]
      ),
        MoodPerReason(
        reason:'Weather',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Money',
        moodSum: 0,
        color:Colors.purple[100]
      ),
    ];
    List<MoodPerReason> dataBadMonth = [
      MoodPerReason(
        reason:'Family',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Friends',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Work',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Hobbies',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'School',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Love',
        moodSum: 0,
        color:Colors.purple[100]
      ),
        MoodPerReason(
        reason:'Health',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Music',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      //
      MoodPerReason(
        reason:'Food',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'News',
        moodSum: 0,
        color:Colors.purple[100]
      ),
        MoodPerReason(
        reason:'Weather',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Money',
        moodSum: 0,
        color:Colors.purple[100]
      ),
    ];
    List<MoodPerReason> dataBadWeek = [
      MoodPerReason(
        reason:'Family',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Friends',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Work',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Hobbies',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'School',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Love',
        moodSum: 0,
        color:Colors.purple[100]
      ),
        MoodPerReason(
        reason:'Health',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Music',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      //
      MoodPerReason(
        reason:'Food',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'News',
        moodSum: 0,
        color:Colors.purple[100]
      ),
        MoodPerReason(
        reason:'Weather',
        moodSum: 0,
        color:Colors.purple[100]
      ),
      MoodPerReason(
        reason:'Money',
        moodSum: 0,
        color:Colors.purple[100]
      ),
    ];

    List<int> tallyAll = List<int>.generate(12,(int i){return 0;});
    List<int> tallyMonth = List<int>.generate(12,(int i){return 0;});
    List<int> tallyWeek = List<int>.generate(12,(int i){return 0;});

    List<double> scoreGoodAll = List<double>.generate(12,(int i){return 0;});
    List<double> scoreGoodMonth = List<double>.generate(12,(int i){return 0;});
    List<double> scoreGoodWeek = List<double>.generate(12,(int i){return 0;});

    List<double> scoreBadAll = List<double>.generate(12,(int i){return 0;});
    List<double> scoreBadMonth = List<double>.generate(12,(int i){return 0;});
    List<double> scoreBadWeek = List<double>.generate(12,(int i){return 0;});

    List<MoodOverTime> timeDataAll = List<MoodOverTime>.generate(0,(int i)=>null,growable: true);
    List<MoodOverTime> timeDataMonth = List<MoodOverTime>.generate(0,(int i)=>null,growable: true);
    List<MoodOverTime> timeDataWeek = List<MoodOverTime>.generate(0,(int i)=>null,growable: true);
    for(int i=0; i<_moodList.length ; i++){
      double moodVal=_moodList[i]['mood'];
      //print("loop "+i.toString()+"Mood val is "+moodVal.toString());
      DateTime a = DateTime.parse(_moodList[i]['date']);
      DateTime d = DateTime(a.year,a.month,a.day);
      timeDataAll.add(
        MoodOverTime(date:d,moodVal: moodVal)
      );
      if(moodVal>=0){
        for(int j =0;j<12;j++){
          if(_moodList[i]['r$j']==1)
          {
            scoreGoodAll[j]+=moodVal;
            tallyAll[j]++;
            dataGoodAlltime[j].add(moodVal);
            if(d.isAfter(DateTime.now().subtract(Duration(days:31))))
            {
                timeDataMonth.add(
                  MoodOverTime(date:d,moodVal: moodVal)
                );
                scoreGoodMonth[j]+=moodVal;
                tallyMonth[j]++;
                dataGoodMonth[j].add(moodVal);
                if(d.isAfter(DateTime.now().subtract(Duration(days:7))))
                {
                  timeDataWeek.add(
                    MoodOverTime(date:d,moodVal: moodVal)
                  );
                  scoreGoodWeek[j]+=moodVal;
                  tallyWeek[j]++;
                  dataGoodWeek[j].add(moodVal);
                }
            }
          }
        }
      }
      else{
        for(int j =0;j<12;j++){
          if(_moodList[i]['r$j']==1)
          {
            scoreBadAll[j]+=moodVal*-1;
            tallyAll[j]++;
            dataBadAlltime[j].add(moodVal*1);
            //dataGoodAlltime[j].add(moodVal);
            
            if(d.isAfter(DateTime.now().subtract(Duration(days:31))))
            {
                timeDataMonth.add(
                  MoodOverTime(date:d,moodVal: moodVal)
                );
                scoreBadMonth[j]+=moodVal*-1;
                tallyMonth[j]++;
                dataBadMonth[j].add(moodVal);
                if(d.isAfter(DateTime.now().subtract(Duration(days:7))))
                {
                  timeDataWeek.add(
                    MoodOverTime(date:d,moodVal: moodVal)
                  );
                  scoreBadWeek[j]+=moodVal*-1;
                  tallyWeek[j]++;
                  dataBadWeek[j].add(moodVal);
                }
            }
          }
        }
      }
    }

    int scaleAll = scoreGoodAll.reduce(max) > scoreBadAll.reduce(max) ? scoreGoodAll.reduce(max).ceil() : scoreBadAll.reduce(max).ceil();
    int scaleMonth = scoreGoodMonth.reduce(max) > scoreBadMonth.reduce(max) ? scoreGoodMonth.reduce(max).ceil() : scoreBadMonth.reduce(max).ceil();
    int scaleWeek = scoreGoodWeek.reduce(max) > scoreBadWeek.reduce(max) ? scoreGoodWeek.reduce(max).ceil() : scoreBadWeek.reduce(max).ceil();

    int indexHappiestAll=0;
    int indexHappiestMonth=0;
    int indexHappiestWeek=0;

    int indexUnhappiestAll=0;
    int indexUnhappiestMonth=0;
    int indexUnhappiestWeek=0;

    int indexOftenAll=0;
    int indexOftenMonth=0;
    int indexOftenWeek=0;

    for(int i=1;i<12;i++)
    {
      indexOftenAll = tallyAll[i]>tallyAll[indexOftenAll] ? i : indexOftenAll;
      indexOftenMonth = tallyMonth[i]>tallyMonth[indexOftenMonth] ? i : indexOftenMonth;
      indexOftenWeek = tallyWeek[i]>tallyWeek[indexOftenWeek] ? i : indexOftenWeek;

      indexHappiestAll = scoreGoodAll[i]>scoreGoodAll[indexHappiestAll] ? i : indexHappiestAll;
      indexHappiestMonth = scoreGoodMonth[i]>scoreGoodMonth[indexHappiestMonth] ? i : indexHappiestMonth;
      indexHappiestWeek = scoreGoodWeek[i]>scoreGoodWeek[indexHappiestWeek] ? i : indexHappiestWeek;
      
      indexUnhappiestAll = scoreBadAll[i]>scoreBadAll[indexUnhappiestAll] ? i : indexUnhappiestAll;
      indexUnhappiestMonth = scoreBadMonth[i]>scoreBadMonth[indexUnhappiestMonth] ? i : indexUnhappiestMonth;
      indexUnhappiestWeek = scoreBadWeek[i]>scoreBadWeek[indexUnhappiestWeek] ? i : indexUnhappiestWeek;
      //print(reasonNames[indexUnhappiestWeek]);
    }
    
    String str = "Nothing so far!";


    return {
      "dataGoodAlltime":dataGoodAlltime,
      "dataGoodMonth":dataGoodMonth,
      "dataGoodWeek":dataGoodWeek,

      "dataBadAlltime":dataBadAlltime,
      "dataBadMonth":dataBadMonth,
      "dataBadWeek":dataBadWeek,

      "happiestAll":scoreGoodAll[indexHappiestAll]>0 ? reasonNames[indexHappiestAll]:str,
      "happiestMonth":scoreGoodMonth[indexHappiestMonth]>0 ?reasonNames[indexHappiestMonth]:str,
      "happiestWeek":scoreGoodWeek[indexHappiestWeek]>0 ?reasonNames[indexHappiestWeek]:str,

      "unhappiestAll":scoreBadAll[indexUnhappiestAll]>0? reasonNames[indexUnhappiestAll]:str,
      "unhappiestMonth":scoreBadMonth[indexUnhappiestMonth]>0?reasonNames[indexUnhappiestMonth]:str,
      "unhappiestWeek":scoreBadWeek[indexUnhappiestWeek]>0?reasonNames[indexUnhappiestWeek]:str,

      "oftenAll":tallyAll[indexOftenAll]>0?reasonNames[indexOftenAll]:str,
      "oftenMonth":tallyMonth[indexOftenMonth]>0?reasonNames[indexOftenMonth]:str,
      "oftenWeek":tallyWeek[indexOftenWeek]>0 ? reasonNames[indexOftenWeek]:str,

      "scaleAll":scaleAll,
      "scaleWeek":scaleWeek,
      "scaleMonth":scaleMonth,

      "timeDataAll":timeDataAll,
      "timeDataMonth":timeDataMonth,
      "timeDataWeek":timeDataWeek
    };
  }

  Widget reasonTile(BuildContext context,IconData icon){
    return Container(
      decoration: BoxDecoration(
      color:Color.fromRGBO(255, 255, 255, 0.0),
      border: Border.all(width: 2.0, color: Theme.of(context).accentColor),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      width:375/12,
      height:29.23,
      margin: EdgeInsets.all(1),
      //padding: const EdgeInsets.all(8.0),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size:25,
            color: Theme.of(context).accentColor,
          ),
         
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: moodsFuture,
        builder: (context, moodsData) {
          switch (moodsData.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
          case ConnectionState.active:
          case ConnectionState.done:
            if(moodsData.data!=null && moodsData.data!=123)
            {
              var dataGood;
              var dataBad;
              var dataTime;
              String happiest="";
              String unhappiest="";
              String often="";
              int scale;
              String words="";
              if(_currentIndex==0)
              {
                dataGood=moodsData.data['dataGoodWeek'];
                dataBad=moodsData.data['dataBadWeek'];
                happiest=moodsData.data['happiestWeek'];
                unhappiest=moodsData.data['unhappiestWeek'];
                often=moodsData.data['oftenWeek'];
                scale=moodsData.data['scaleWeek'];
                dataTime=moodsData.data['timeDataWeek'];
                words="This week";
              }
              else if(_currentIndex==1)
              {
                dataGood=moodsData.data['dataGoodMonth'];
                dataBad=moodsData.data['dataBadMonth'];
                happiest=moodsData.data['happiestMonth'];
                unhappiest=moodsData.data['unhappiestMonth'];
                often=moodsData.data['oftenMonth'];
                scale=moodsData.data['scaleMonth'];
                dataTime=moodsData.data['timeDataMonth'];
                words="This month";
              }
              else
              {
                dataGood=moodsData.data['dataGoodAlltime'];
                dataBad=moodsData.data['dataBadAlltime'];
                happiest=moodsData.data['happiestAll'];
                unhappiest=moodsData.data['unhappiestAll'];
                often=moodsData.data['oftenAll'];
                scale=moodsData.data['scaleAll'];
                dataTime=moodsData.data['timeDataAll'];
                words="Overall";
              }


              var series0 = [
                charts.Series(
                  id: 'Happiness',
                  domainFn: (MoodPerReason entry, _) => entry.reason,
                  measureFn: (MoodPerReason entry, _) => entry.moodSum,
                  colorFn: (MoodPerReason entry, _) => entry.color,
                  data: dataGood,
                  labelAccessorFn: (MoodPerReason entry, _) =>'${entry.reason}: \$${entry.moodSum}'
                ),
                charts.Series(
                  id: 'Sadness',
                  domainFn: (MoodPerReason entry, _) => entry.reason,
                  measureFn: (MoodPerReason entry, _) => entry.moodSum,
                  colorFn: (MoodPerReason entry, _) => entry.color,
                  data: dataBad,
                  labelAccessorFn: (MoodPerReason entry, _) =>'${entry.reason}: \$${entry.moodSum}'
                )
              ];

              var series1=[
                charts.Series<MoodOverTime, DateTime>(
                  id: 'MoodOverTime',
                  colorFn: (_, __) => charts.Color(r:Theme.of(context).accentColor.red,g:Theme.of(context).accentColor.green,b:Theme.of(context).accentColor.blue),
                  domainFn: (MoodOverTime mot, _) => mot.date,
                  measureFn: (MoodOverTime mot, _) => mot.moodVal,
                  data: dataTime
                )
              ];
            //print("Pog1"+moodsData.data.toString());
            return Container(
              height:MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(0),
              child: ListView(
                children: <Widget>[
                  //Text(_currentIndex.toString()),
                  SizedBox(height:20),
                  CupertinoSegmentedControl(
                    borderColor: Theme.of(context).accentColor,
                    pressedColor: Color.fromRGBO(246, 198, 255, 0.2),
                    selectedColor: Color.fromRGBO(246, 198, 255, 0.4),
                    unselectedColor: Colors.transparent,
                    //unselectedColor: ,

                    children: {
                      0: Text(
                        "Last 7 Days",
                        style: TextStyle(
                          color: Theme.of(context).accentColor
                        )
                      ),
                      1: Text(
                        "Last 30 Days",
                        style: TextStyle(
                          color: Theme.of(context).accentColor
                          )
                        ),
                      2: Text(
                        "All Time",
                        style: TextStyle(
                          color: Theme.of(context).accentColor
                        )
                      )
                    },
                  //groupValue: this._selectedTab,
                  onValueChanged: (value) {
                    setState(() => this._currentIndex = value);
                    
                  },
                  groupValue: _currentIndex,
                ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Text(
                                "Negative Effect\nOn Mood",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Positive Effect\nOn Mood",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700
                                ),
                              )
                            ]
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width:MediaQuery.of(context).size.width/2-37,
                              height:375,
                              //width:100,
                              child: Graph(series: [series0[1]],scale: scale,pos:false)
                            ),
                            Container(
                              height:375,
                              child: Column(
                                children: [
                                  reasonTile(context,OMIcons.home),
                                  reasonTile(context,OMIcons.peopleOutline),
                                  reasonTile(context,Icons.business),
                                  reasonTile(context,Icons.gesture),
                                  reasonTile(context,OMIcons.school),
                                  reasonTile(context,OMIcons.favoriteBorder),
                                  reasonTile(context,Icons.healing),
                                  reasonTile(context,OMIcons.headset),
                                  reasonTile(context,OMIcons.kitchen),
                                  reasonTile(context,OMIcons.announcement),
                                  reasonTile(context,OMIcons.wbSunny),
                                  reasonTile(context,OMIcons.localAtm),
                                ],
                              ),
                            ),
                            SizedBox(
                              width:MediaQuery.of(context).size.width/2-37,
                              height:375,
                              //width:100,
                              child: Graph(series:[series0[0]],scale: scale,pos:true)
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Divider(
                                color:Colors.black
                              ),
                              SizedBox(height:15),
                              Align(
                                alignment: Alignment.bottomLeft,
                                  child: Text(
                                  "Quick Facts",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ),
                              SizedBox(height:5),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 5,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10,10,10,10),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: new TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(text: '$words, the thing that made you happiest was: ',style:TextStyle(color:Theme.of(context).textTheme.headline1.color)),
                                        new TextSpan(text: happiest, style: new TextStyle(fontWeight: FontWeight.bold,color:Theme.of(context).textTheme.headline1.color)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 5,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10,10,10,10),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: new TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(text: '$words, the thing that made you unhappiest was: ', style:TextStyle(color:Theme.of(context).textTheme.headline1.color)),
                                        new TextSpan(text: unhappiest, style: new TextStyle(fontWeight: FontWeight.bold,color:Theme.of(context).textTheme.headline1.color)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 5,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10,10,10,10),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: new TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(text: '$words, the thing that most frequently affected your mood was: ',style:TextStyle(color:Theme.of(context).textTheme.headline1.color)),
                                        new TextSpan(text: often, style: new TextStyle(fontWeight: FontWeight.bold,color:Theme.of(context).textTheme.headline1.color)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height:20),
                               Divider(color:Colors.black),
                            ],
                          ),
                        ),
                       
                        Container(
                          padding:EdgeInsets.fromLTRB(20,0,20,20),
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomLeft,
                                  child: Text(
                                  "Mood Over Time",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ),
                              Container(
                                height:200,
                                child: charts.TimeSeriesChart(
                                  series1,
                                  animate: true,
                                  defaultRenderer: new charts.LineRendererConfig(includePoints: _currentIndex != 2),
                                  // Optionally pass in a [DateTimeFactory] used by the chart. The factory
                                  // should create the same type of [DateTime] as the data provided. If none
                                  // specified, the default creates local date time.
                                  dateTimeFactory: const charts.LocalDateTimeFactory(),
                                  primaryMeasureAxis:
                                  new charts.NumericAxisSpec(
                                    showAxisLine: true,
                                    renderSpec: new charts.GridlineRendererSpec(

                                    // Tick and Label styling here.
                                    labelStyle: new charts.TextStyleSpec(
                                        //fontSize: 18, // size in Pts.
                                        color: Theme.of(context).textTheme.headline1.color == Colors.white ? charts.MaterialPalette.white : charts.MaterialPalette.black),

                                    // Change the line colors to match text color.
                                    lineStyle: new charts.LineStyleSpec(
                                        color: Theme.of(context).textTheme.headline1.color == Colors.white ? charts.MaterialPalette.white : charts.MaterialPalette.black
                                      )
                                    ),
                                    viewport: charts.NumericExtents(-5, 5),
                                    tickProviderSpec: new charts.StaticNumericTickProviderSpec(
                                      
                                      // Create the ticks to be used the domain axis.
                                      <charts.TickSpec<num>>[
                                        new charts.TickSpec(-5, label: 'Totally\nTerrible\n\n'),
                                        new charts.TickSpec(0, label: ''),
                                        new charts.TickSpec(5, label: 'Super\nGreat'),
                                        //new charts.TickSpec(3, label: ''),
                                        //new charts.TickSpec(4, label: ''),
                                      ],
                                    ),
                                  ),
                                  domainAxis: charts.DateTimeAxisSpec(
                                    renderSpec: new charts.SmallTickRendererSpec(

                                    // Tick and Label styling here.
                                    labelStyle: charts.TextStyleSpec(
                                        //fontSize: 18, // size in Pts.
                                        color: Theme.of(context).textTheme.headline1.color == Colors.white ? charts.MaterialPalette.white : charts.MaterialPalette.black),

                                    // Change the line colors to match text color.
                                    // lineStyle: new charts.LineStyleSpec(
                                    //     color: Theme.of(context).textTheme.headline1.color == Colors.white ? charts.MaterialPalette.white : charts.MaterialPalette.black
                                    //   )
                                    ),
                                    tickFormatterSpec: new charts.AutoDateTimeTickFormatterSpec(
                                      day: new charts.TimeFormatterSpec(
                                        format: 'MMMM dd', transitionFormat: 'MMMM dd'),
                                      minute: new charts.TimeFormatterSpec(
                                        format: 'MMMM dd', transitionFormat: 'MMMM dd'),
                                      hour: new charts.TimeFormatterSpec(
                                        format: 'MMMM dd', transitionFormat: 'MMMM dd'),
                                      month: new charts.TimeFormatterSpec(
                                        format: 'MMMM', transitionFormat: 'MMMM, yyyy'),
                                      year: new charts.TimeFormatterSpec(
                                        format: 'MMMM, yyyy', transitionFormat: 'MMMM, yyyy')
                                    )
                                  )
                                  //domainAxis: new charts.EndPointsTimeAxisSpec(),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );

            }
            if(moodsData.data==null)
            {
              return Container();
            }
            return Text(
                "You haven't made any entries yet!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              );

            
          }
          return Container();
        }
      ),
    );
  }
}
