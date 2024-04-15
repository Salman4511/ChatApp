import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/chat_list_screen/widgets/chat_card_widget.dart';
import 'package:flutter/material.dart';

class ChatListScrreen extends StatelessWidget {
  const ChatListScrreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                kheight300,
                Row(
                  children: [
                    kwidth30,
                    Text(
                      'Neue Frage',
                      style: textstyle5,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 30,
                        ))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      ChatCardWidget(
                          title: 'Handling Stress',
                          number: '22',
                          image: 'assets/images/download5.png',
                          isDelete: false),
                      ChatCardWidget(
                          title: 'Dealing with love',
                          number: '25',
                          image: 'assets/images/download6.png',
                          isDelete: false),
                      ChatCardWidget(
                          title: 'Anxiety',
                          number: '105',
                          image: 'assets/images/download7.png',
                          isDelete: true),
                      ChatCardWidget(
                          title: 'Diabetes Nutrition',
                          number: '45',
                          image: 'assets/images/download8.png',
                          isDelete: true),
                      ChatCardWidget(
                          title: 'Loss of Appetite',
                          number: '15',
                          image: 'assets/images/download9.png',
                          isDelete: true)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 46, 139, 49),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                kwidth40,
                Center(
                  child: Column(
                    children: [
                      kheight200,
                      Text(
                        'Meine Fragen',
                        style: textstyle7,
                      ),
                      Text(
                        '5 von 15 Kostenlosenlosen Fragen gestellt',
                        style: textstyle8,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
