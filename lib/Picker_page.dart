import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File & Image Picker Demo',
      home: const PickerHomePage(),
    );
  }
}

class PickerHomePage extends StatefulWidget {
  const PickerHomePage({super.key});

  @override
  State<PickerHomePage> createState() => _PickerHomePageState();
}

class _PickerHomePageState extends State<PickerHomePage> {
  File? _imageFile;
  PlatformFile? _genericFile;
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        _genericFile = null; 
      });
    }
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any, 
      allowMultiple: false,
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        _genericFile = result.files.single;
        _imageFile = null; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File & Image Picker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _pickImage,
                child: const Text('Pick Image (Gallery)'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickFile,
                child: const Text('Pick Any File'),
              ),
              const SizedBox(height: 40),
              if (_imageFile != null)
                Column(
                  children: [
                    const Text('Selected Image:', style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Image.file(
                      _imageFile!,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(_imageFile!.path.split('/').last),
                  ],
                )
              else if (_genericFile != null)
                Column(
                  children: [
                    const Text('Selected File Details:', style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    ListTile(
                      leading: const Icon(Icons.insert_drive_file),
                      title: Text(_genericFile!.name),
                      subtitle: Text('${(_genericFile!.size / 1024).toStringAsFixed(2)} KB'),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}


