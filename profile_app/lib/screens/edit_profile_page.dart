
import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;
  const EditProfilePage({
    super.key,
    required this.profile
    });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _namaController;
  late TextEditingController _emailController;
  late TextEditingController _hpController;
  late TextEditingController _githubController;
  late TextEditingController _bioController;

  @override
  void initState() {
    super.initState();
    _namaController = TextEditingController(text: widget.profile.nama);
    _emailController = TextEditingController(text: widget.profile.email);
    _hpController = TextEditingController(text: widget.profile.hp);
    _githubController = TextEditingController(text: widget.profile.github);
    _bioController = TextEditingController(text: widget.profile.bio);
  }
  
  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _hpController.dispose();
    _githubController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  void _saveProfile(){
    if (!_formKey.currentState!.validate()) return;

    final dataBaru = Profile(
      nama: _namaController.text.trim(), 
      nim: widget.profile.nim, 
      prodi: widget.profile.prodi, 
      kelas: widget.profile.kelas, 
      email: _emailController.text.trim(), 
      hp: _hpController.text.trim(), 
      github: _githubController.text.trim(), 
      bio: _bioController.text.trim(),
    );

    Navigator.pop(context, dataBaru);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
              ],
            ),
            ),
        )
        ),
    );
  }
}


