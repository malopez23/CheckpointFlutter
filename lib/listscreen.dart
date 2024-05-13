import 'package:flutter/material.dart';
import 'framework.dart';
import 'detail-screen.dart';

class ListScreen extends StatelessWidget {
  final List<Framework> frameworks = [
    Framework(nome: "Flutter", descricao: "Desenvolvido pelo Google, o Flutter é um framework de UI open-source para a criação de aplicativos nativos para dispositivos móveis, web e desktop a partir de um único código-base. Ele é amplamente utilizado devido à sua rapidez de desenvolvimento, desempenho e facilidade de uso."),
    Framework(nome: "React Native", descricao: "Criado pelo Facebook, o React Native é um framework de desenvolvimento de aplicativos móveis que permite o desenvolvimento de aplicativos nativos para iOS e Android usando JavaScript e React. Ele é popular por sua capacidade de reutilização de código e por oferecer uma experiência de desenvolvimento rápida."),
    Framework(nome: "Vue.js", descricao: "Vue.js é um framework progressivo de JavaScript usado para construir interfaces de usuário. Ele é conhecido por sua simplicidade e flexibilidade, permitindo o desenvolvimento rápido de aplicativos web interativos."),
    Framework(nome: "Express.js", descricao: "Express.js é um framework de aplicativo web para Node.js. Ele simplifica o processo de criação de aplicativos web e APIs com Node.js, fornecendo uma estrutura robusta e flexível."),
    Framework(nome: "Django", descricao: "Django é um framework de desenvolvimento web em Python que incentiva o desenvolvimento rápido e limpo. Ele é amplamente utilizado para criar aplicativos web escaláveis e seguros."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frameworks Mais Utilizados"),
      ),
      body: ListView.builder(
        itemCount: frameworks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(frameworks[index].nome),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(framework: frameworks[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
