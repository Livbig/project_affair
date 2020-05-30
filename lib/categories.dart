import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Color _color;
  String _icon;
  String _label;
  Function _onPressed;
  Category(this._color, this._label, this._icon, this._onPressed);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            onPressed: _onPressed,
            fillColor: _color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Container(padding: EdgeInsets.all(15),child: Image.asset(_icon)),
            ),
          Text(_label, style: Theme.of(context).textTheme.button)
      ]
      )
    );
  }
}