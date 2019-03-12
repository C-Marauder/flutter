import 'package:flutter/material.dart';
import 'package:componnents/componnents.dart';
class AboutUsPage extends AppScaffold{
  final String content = "成立于2017年，总部坐落于深圳市南山区，致力于打造移动整合营销生态链，为广告主提供一站式移动互联网营销解决方案。大渔科技专注于移动互联网营销服务，已与包括中腾信金融、小花科技在内的多家大型金融机构达成合作，为其提供包括“品牌策划、媒体投放、效果评估、市场分析”在内的营销服务。公司秉承以“待确定待确定待确定”的经营理念，以核心技术为支持，聚焦移动大数据，立志成为中国移动互联网营销领域受人尊敬的品牌。";
  @override
  Widget createBody() {
    return Center(child: Text.rich(TextSpan(text: "\n大渔科技（深圳)有限责任公司",style: TextStyle(color: Colors.blue),children:[
      TextSpan(text: content,style: TextStyle(color: Colors.black54))
    ]

    )));
  }

}