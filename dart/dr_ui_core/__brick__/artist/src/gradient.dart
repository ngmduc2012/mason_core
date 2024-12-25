

import 'package:flutter/material.dart';

class ${{name.pascalCase()}}Gradient {
  const ${{name.pascalCase()}}Gradient();

  Gradient purpleLinear({double opacity = 1.0}) => LinearGradient(
    begin: Alignment.bottomRight,
    end:  const Alignment(-1.479, -1.615) ,
    colors: [
      // {{name.pascalCase()}}Color.snapPurple.withOpacity(0.0001*opacity),
      // {{name.pascalCase()}}Color.deepPurple.withOpacity(1*opacity),
    ],
    stops:  const <double>[0, 1],
  );
}