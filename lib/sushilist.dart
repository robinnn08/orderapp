import 'package:flutter/material.dart';

class SushiList extends StatefulWidget {
  final String name;
  final String price;
  final String image;
  final color;
  String note = '';
  int quantity = 1;

  void Function()? onPressed;

  SushiList({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.color,
    required this.onPressed,
    required this.note,
    required this.quantity,
  });

  @override
  State<SushiList> createState() => _SushiListState();
}

class _SushiListState extends State<SushiList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: widget.color.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    widget.image,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  widget.name,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.remove,
                      size: 18,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        if (widget.quantity > 1) widget.quantity--;
                      });
                    },
                  ),
                  Text(
                    widget.quantity.toString(),
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 18,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.quantity++;
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(255, 94, 94, 94),
                  ),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    hintText: 'Add a note',
                  ),
                  onChanged: (value) {
                    widget.note = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                    onPressed: widget.onPressed,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                    height: 25,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
