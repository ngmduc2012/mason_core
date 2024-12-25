/// Object-oriented programming: Encapsulation a package.

typedef My{{name.pascalCase()}} = {{name.pascalCase()}};

class {{name.pascalCase()}} {
/*
   Learn more: url_to_document_of_package
   How to use?
   STEP 1: Define

   STEP 2: Setup on init
   OPTION 1:

   STEP 3: E.g use
   OPTION 1:

*/

  num? {{name.camelCase()}};

  // Help: https://dart.dev/language#classes
  // {{name.pascalCase()}}.origin()
  //   : {{name.camelCase()}} = "", assert({{name.camelCase()}} == ""),

 num get example{{name.pascalCase()}} =>  {{name.camelCase()}} ?? 0;

  // example{{name.pascalCase()}} = abc;
 set example{{name.pascalCase()}}(num {{name.camelCase()}}){
    this.{{name.camelCase()}} = {{name.camelCase()}};
 }

}