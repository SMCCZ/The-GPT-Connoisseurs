import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_gpt_connoisseurs_app/constants/asset_image.dart';
import 'package:team_gpt_connoisseurs_app/controller/message_controller.dart';
import 'package:team_gpt_connoisseurs_app/views/widgets/media_gallery_widget.dart';
import '/views/widgets/message_response_short_card.dart';
import '../../model/message.dart';
import '/views/widgets/app_sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var messageController = Get.put(MessageController());
    return Scaffold(
      backgroundColor: const Color(0xff262626),
      appBar: AppBar(
        backgroundColor: const Color(0xff262626),
      ),
      body: Obx(() {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              child: AppSideBar(),
            ),
            Container(
              color: const Color(0xff262626),
              width: 360,
              child: ListView(
                children: [
                  ...List.generate(messageController.messages.length, (index) {
                    if (index == 0) {
                      return MessageResponseShortCard(
                        message: messageController.messages[index],
                      );
                    }
                    return InkWell(
                      onTap: () {
                        //TODO:Do something needed on tap of previous message
                      },
                      child: MessageResponseShortCard(
                        cardColor: const Color(0xff262626),
                        message: messageController.messages[index],
                      ),
                    );
                  })
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0, bottom: 32),
              padding: const EdgeInsets.only(top: 0),
              width: width * 0.53,
              child: Column(
                children: [
                  Expanded(
                    flex: 10,
                    child: ListView(
                      reverse: true,
                      children: [
                        ...List.generate(messageController.messages.length,
                            (index) {
                          return InkWell(
                            onTap: () {
                              //TODO:Do something needed on tap of previous message
                            },
                            child: MessageResponseShortCard(
                              cardColor: Colors.black,
                              message: messageController.messages[index],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: messageController.messageEditingController,
                      style: GoogleFonts.inter(
                        color: const Color(0xffA0A0A0),
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xff1E1E1E),
                        border: const OutlineInputBorder(),
                        hintText: "Type Something!!",
                        hintStyle: GoogleFonts.inter(
                          color: const Color(0xffA0A0A0),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            //TODO:AKS BOT ANY QUESTION HERE
                            messageController.messages.insert(
                              0,
                              Message(
                                message: messageController
                                    .messageEditingController.text,
                              ),
                            );
                            messageController.messageEditingController.clear();
                          },
                          child: Image.asset(
                            KAssetImage.send,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color(0xff262626),
                ),
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 8, bottom: 8, left: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Stories",
                                style: GoogleFonts.inter(color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ...List.generate(
                                20,
                                (index) => Image.asset(
                                  KAssetImage.sampleChat3,
                                ),
                              ),
                              Image.asset(
                                KAssetImage.sampleChat3,
                              ),
                              Image.asset(
                                KAssetImage.sampleChat3,
                              ),
                              Image.asset(
                                KAssetImage.sampleChat3,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 8, bottom: 8, left: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Media",
                                style: GoogleFonts.inter(color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const MediaGalleryWidget(),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 8, bottom: 8, left: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Other files",
                                style: GoogleFonts.inter(color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.file_copy_outlined,
                            color: Colors.white,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Documents",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.file_copy_outlined,
                            color: Colors.white,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Channels",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.bar_chart,
                            color: Colors.white,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Groups",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
