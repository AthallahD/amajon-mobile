import 'package:amajon_mobile/screens/list_product.dart';
import 'package:amajon_mobile/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:amajon_mobile/screens/productentry_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item; 
  final Color color;
  
  const ItemCard(this.item, {required this.color, super.key}); 

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(20), // Rounding yang lebih besar
      elevation: 5.0, // Tambahkan bayangan untuk efek modern
      child: InkWell(
        onTap: () async {
          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductEntryFormPage(),
              ));
          }
          else if(item.name == "Lihat Daftar Produk"){
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => const ProductEntryPage(),
              ));
          }
          else if (item.name == "Logout") {
            final response = await request.logout(
            "http://localhost:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
                if (response['status']) {
                    String uname = response["username"];
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("$message Sampai jumpa, $uname."),
                    ));
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(message),
                        ),
                    );
                }
            }
          }
        },
        splashColor: Colors.white.withOpacity(0.3), // Tambahkan efek splash saat ditekan
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 35.0, // Ikon lebih besar
                ),
                const SizedBox(height: 8.0),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } 
}