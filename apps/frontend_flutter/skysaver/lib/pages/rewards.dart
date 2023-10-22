import 'package:flutter/material.dart';
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/utils/client.dart';
import 'package:skysaver/widgets/rewards/reward_card.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({super.key});

  @override
  State<RewardsPage> createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  List<Reward> rewards = [];


  @override
  void didChangeDependencies() async {
    final rewardsRsp = await apiClient.apiRewardsGet();
    if (rewardsRsp.isSuccessful) {
      setState(() {
        rewards = rewardsRsp.body?.results ?? [];
      });
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int idx) => RewardCard(reward: rewards[idx]),
      itemCount: rewards.length,
    );
  }
}
