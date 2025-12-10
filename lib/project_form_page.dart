// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ProjectFormPage extends StatefulWidget {
  const ProjectFormPage({super.key});

  @override
  State<ProjectFormPage> createState() => _ProjectFormPageState();
}

class _ProjectFormPageState extends State<ProjectFormPage> {
  String? category;
  String? subCategory;
  String? difficulty = "Medium";
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application Form"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Project Title
            buildLabel("Project Title"),
            buildTextField("Enter the Project Title"),

            /// Description
            buildLabel("Project Description"),
            buildTextField(
              "Provide a detailed description of your project",
              maxLines: 4,
            ),

            /// Price
            buildLabel("Price"),
            buildTextField(
              "0.00",
              keyboardType: TextInputType.number,
            ),

            /// Category
            buildLabel("Category"),
            DropdownButtonFormField(
              decoration: fieldDecoration(),
              items: ["Design", "Development", "Business"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) => setState(() => category = v),
            ),
            const SizedBox(height: 15),

            /// Sub Category
            buildLabel("Sub Category"),
            DropdownButtonFormField(
              decoration: fieldDecoration(),
              items: ["Mobile App", "Web App", "UI/UX", "Marketing"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) => setState(() => subCategory = v),
            ),
            const SizedBox(height: 15),

            /// Difficulty
            buildLabel("Difficulty"),
            DropdownButtonFormField(
              decoration: fieldDecoration(),
              items: ["Easy", "Medium", "Hard"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) => setState(() => difficulty = v),
            ),
            const SizedBox(height: 15),

            /// Duration
            buildLabel("Duration"),
            buildTextField("8-10 Weeks"),

            /// Benefits
            buildLabel("How it benefits users"),
            buildTextField("Describe the benefits for users", maxLines: 4),

            /// Learning Objectives
            buildLabel("Learning Objectives"),
            buildTextField("Describe the learning objectives", maxLines: 4),

            /// Key Takeaways
            buildLabel("Key Takeaways"),
            buildTextField("Describe the key takeaways", maxLines: 4),

            /// Additional Remarks
            buildLabel("Additional Remarks"),
            buildTextField(
              "Write remarks to help users understand the project",
              maxLines: 4,
            ),

            const SizedBox(height: 20),

            /// Attachments Section
            const Text(
              "Attachments",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            buildAttachmentTile("Introduction.zip"),
            buildAttachmentTile("Abstract.pdf"),
            buildAttachmentTile("ProjectDoc.pdf"),

            const SizedBox(height: 20),

            /// Terms
            Row(
              children: [
                Checkbox(
                  value: acceptTerms,
                  onChanged: (v) => setState(() => acceptTerms = v!),
                ),
                const Expanded(
                  child: Text("I accept the terms and conditions"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Application Saved Successfully!"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                child: const Text("Save Now"),
              ),
            ),

            const SizedBox(height: 10),

            /// Publish Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Application Published!"),
                      backgroundColor: Colors.blue,
                    ),
                  );
                },
                child: const Text("Publish Now"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, top: 18),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
    );
  }

  Widget buildTextField(
    String hint, {
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: fieldDecoration().copyWith(hintText: hint),
    );
  }

  InputDecoration fieldDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    );
  }

  Widget buildAttachmentTile(String fileName) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.picture_as_pdf),
        title: Text(fileName),
        trailing: const Icon(Icons.delete, color: Colors.red),
      ),
    );
  }
}

