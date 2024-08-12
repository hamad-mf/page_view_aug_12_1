import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrls = [
      'https://imgs.search.brave.com/CKfZqKU71lSMwZS8O7VejoEBJ4B-L9zlamqE_LwjJGc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pYy5j/YXJpZC5jb20vdmVy/dGljYWwtZG9vcnMv/aXRlbXMvdmVydGlj/YWwtZG9vci1jaGV2/eS1jb3J2ZXR0ZV82/LmpwZw',
      'https://imgs.search.brave.com/b4IfC_XDXSxOawG4RKhexn1N3gQ6VKrFKf5pg-k1_3c/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pYy5j/YXJpZC5jb20vdmVy/dGljYWwtZG9vcnMv/aXRlbXMvdmVydGlj/YWwtZG9vci1jaGV2/eS1jYW1hcm9fNi5q/cGc',
      'https://imgs.search.brave.com/kT5mfnzQ-m9JFgNbo_v12Kt6bCB2fJGn8zkGXYphMro/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pYy5j/YXJpZC5jb20vdmVy/dGljYWwtZG9vcnMv/aXRlbXMvdmRjZG1h/ZzA0MDhfNi5qcGc',
      'https://imgs.search.brave.com/LbPP0z8FgtjpVabYKCcIJdXbdY_sfYGMgdV8ms7HGYg/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pYy5j/YXJpZC5jb20vdmVy/dGljYWwtZG9vcnMv/aXRlbXMvdmRjY3J5/MzAwMDQxMF82Lmpw/Zw',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: imageUrls.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Container(
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
