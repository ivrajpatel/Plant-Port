import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CustomBottomSheetContent extends StatefulWidget {
  @override
  State<CustomBottomSheetContent> createState() =>
      _CustomBottomSheetContentState();
}

class _CustomBottomSheetContentState extends State<CustomBottomSheetContent> {
  final int _numPages = 3;

  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 10.0,
      width: isActive ? 10.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF129C52) : Colors.green.shade50,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 642, // Adjust height as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Close Button & Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 32), // Placeholder to balance close button
              Text(
                "Snap Tips",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),

          SizedBox(height: 10),

          // Images with Icons
          Container(
            height: 480,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        _buildTipCard(
                            "assets/images/snapc1.png", false), // Wrong Image
                        SizedBox(height: 10),
                        _buildTipCard(
                            "assets/images/snap1r.png", true), // Correct Image
                      ],
                    ),

                    SizedBox(height: 15),

                    // Instruction Text
                    Text(
                      "Place your plant in the center",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Place your plant in the center of the frame to make the identification more accurate",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        _buildTipCard(
                            "assets/images/snap2c.png", false), // Wrong Image
                        SizedBox(height: 10),
                        _buildTipCard(
                            "assets/images/snap2r.png", true), // Correct Image
                      ],
                    ),

                    SizedBox(height: 15),

                    // Instruction Text
                    Text(
                      "Make the photo clear and high quality",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Avoid taking blurry, dark or overexposed photos",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        _buildTipCard(
                            "assets/images/snap3c.png", false), // Wrong Image
                        SizedBox(height: 10),
                        _buildTipCard(
                            "assets/images/snap3r.png", true), // Correct Image
                      ],
                    ),

                    SizedBox(height: 15),

                    // Instruction Text
                    Text(
                      "If the tree is too large, take a photoof it’s leaves",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "If the tree & plant is too large to fit in the frame, capture its most recognizable parts,such as leaves and flowers",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          // Dots Indicator & Next Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 0
                  ? TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _currentPage != _numPages - 1
                            ? _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              )
                            : Get.back();
                      },
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 78,
                            decoration: BoxDecoration(
                                color: Color(0xFF129C52),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 78,
                        decoration: BoxDecoration(
                            color: Color(0xFF129C52),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: Text("Done",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      ),
                    )
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.green,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   onPressed: () {},
              //   child: Text("Next"),
              // ),
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildTipCard(String imagePath, bool isCorrect) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Image.asset(imagePath, width: 250, height: 150, fit: BoxFit.cover),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              isCorrect ? Icons.check_circle : Icons.cancel,
              color: isCorrect ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

void _showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return CustomBottomSheetContent();
    },
  );
}

class ScanerPage extends StatefulWidget {
  const ScanerPage({super.key});

  @override
  State<ScanerPage> createState() => _ScanerPageState();
}

class _ScanerPageState extends State<ScanerPage> {
  File? galleryFile;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Add Your Port",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: galleryFile == null
                ? GestureDetector(
                    onTap: () async {
                      _showPicker(context: context);
                    },
                    // onTap: () => _showCustomBottomSheet(context),
                    child: Container(
                      height: 42,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        "Add Port",
                        style: TextStyle(color: Colors.white),
                      )),
                    )
                    // Image(
                    //   image: AssetImage("assets/plus.png"),
                    //   width: 150,
                    //   height: 150,
                    // ),
                    )
                : SizedBox(
                    height: galleryFile != null
                        ? MediaQuery.of(context).size.height * 0.80
                        : null,
                    width: galleryFile != null
                        ? MediaQuery.of(context).size.width * 0.80
                        : null,
                    child: galleryFile == null
                        ? const Center(child: Text(''))
                        : Center(child: Image.file(galleryFile!)),
                  ),
          ),
          if (galleryFile != null)
            IconButton(
              icon: Icon(Icons.send, size: 26),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          else
            SizedBox(),
        ],
      ),
    );
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  Navigator.of(context).pop();
                  getImage(ImageSource.gallery);

                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip_sharp),
                title: const Text('Snap Tips'),
                onTap: () => _showCustomBottomSheet(context),
                // ()
                // {
                //   getImage(ImageSource.camera);
                //   Navigator.of(context).pop();
                // },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getImage(
    ImageSource img,
  ) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}
