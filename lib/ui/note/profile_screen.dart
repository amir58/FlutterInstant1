import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;

  String imageUrl = '';
  bool uploading = false;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            if (imageUrl.isEmpty)
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () => pickImage(),
                child: const CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    size: 45,
                  ),
                ),
              )
            else
              Stack(
                alignment: Alignment.center,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () => pickImage(),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                      radius: 30,
                    ),
                  ),
                  Visibility(
                    visible: uploading,
                    child: const CircularProgressIndicator(),
                  ),
                ],
              ),
            const SizedBox(height: 20),
            TextFormField(
              controller: nameController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: phoneController,
              textInputAction: TextInputAction.next,
              maxLength: 11,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              enabled: false,
              controller: emailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => saveUserData(),
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                child: const Text("Update"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void saveUserData() {
    final userId = auth.currentUser!.uid;

    final data = {
      'name': nameController.text,
      'phone': phoneController.text,
    };

    firestore.collection("users").doc(userId).update(data);
  }

  void getUserData() {
    firestore
        .collection("users")
        .doc(auth.currentUser!.uid)
        .get()
        .then((value) {
      updateUi(value.data()!);
    }).catchError((error) {});
  }

  void updateUi(Map<String, dynamic> data) {
    nameController.text = data['name'];
    phoneController.text = data['phone'];
    emailController.text = data['email'];

    imageUrl = data['imageUrl'];
    setState(() {});
  }

  // Select image from gallery
  // Upload Image to Firebase storage
  // Get ImageUrl from Firebase storage
  // Save ImageUrl to Firebase Firestore Database

  void pickImage() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);

    File image = File(file!.path);

    uploadImage(image);
  }

  void uploadImage(File image) {
    setState(() {
      uploading = true;
    });
    final userId = auth.currentUser!.uid;

    storage.ref("profileImages/$userId").putFile(image).then((value) {
      print('uploadImage => SUCCESS');
      getImageUrl();
    }).catchError((error) {
      setState(() {
        uploading = false;
      });
      print('uploadImage => $error');
    });
  }

  void getImageUrl() {
    final userId = auth.currentUser!.uid;

    storage.ref("profileImages/$userId").getDownloadURL().then((value) {
      print('getImageUrl => $value');
      setState(() {
        imageUrl = value;
        uploading = false;
      });
      saveImageUrl(imageUrl);
    }).catchError((error) {
      print('getImageUrl => $error');
    });
  }

  void saveImageUrl(String imageUrl) {
    final userId = auth.currentUser!.uid;

    firestore.collection("users").doc(userId).update({
      'imageUrl': imageUrl,
    });
  }
}
