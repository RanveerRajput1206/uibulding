import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UiTwoPageTwo extends StatelessWidget {
  const UiTwoPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: Text(
              "What you would you like  \nto learn today?",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.067,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.grey.shade300,
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Serch cources mentors etc",
                          suffixIcon: Icon(Icons.mic),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.067,
                width: MediaQuery.of(context).size.width * 0.14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300,
                ),
                child: const Icon(
                  Icons.toc,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const NewWidget(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(12),
                  ),
                  color: Color.fromARGB(255, 247, 192, 210)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.112,
                      width: MediaQuery.of(context).size.width * 0.16,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(19),
                            bottomLeft: Radius.circular(19),
                            bottomRight: Radius.circular(6),
                          ),
                          color: Colors.white),
                      child: Image.asset(
                        "assets/song.png",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          "Antor Paul",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        "UX Designer",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.shade400),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "22 Cources",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 40,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(14),
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                            child: Icon(Icons.arrow_forward),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // const Text(
          //   "Antor Paul",
          //   style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
          // ),
          // const Text("ux design"),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: const [
          Text(
            "Mentors",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          Expanded(child: SizedBox()),
          Text(
            "Trending",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          Icon(Icons.keyboard_arrow_down_outlined),
        ],
      ),
    );
  }
}
