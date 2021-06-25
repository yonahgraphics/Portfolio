import 'package:flutter/material.dart';
import 'package:portforlio/presentation/widgets/centered_view/centered_view.dart';
import 'package:portforlio/presentation/widgets/text_with_readmore/text_with_readmore.dart';

class ContentBelowHome extends StatelessWidget {
  const ContentBelowHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        children: [
          TextWithReadMore(
            title: 'IT BERRIES',
            description: 'Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus.'
                ' Sed ornare sit amet lorem sed viverra. In vel urna quis libero viverra facilisis ut ac est.'
                ' Morbi commodo, eros in dignissim tempus, lacus odio rutrum augue, in semper sem magna quis tellus.'
                ' Etiam enim erat, suscipit eu semper a, dictum sit amet elit. Nunc egestas nisi eget enim gravida facilisis.'
                ' Pellentesque laoreet varius turpis vel pharetra. '
                'Ut ante justo, consequat vitae elementum tempor, accumsan nec eros. ',
            readMore: 'READ MORE',
          ),
        ],
      ),
    );
  }
}
