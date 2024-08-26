import 'package:fixing_car/fixing_list.dart';
import 'package:fixing_car/my_car_fixing.dart';
import 'package:fixing_car/new_car_dialog.dart';
import 'package:flutter/material.dart';

class MyCars extends StatefulWidget {
  const MyCars({super.key});

  @override
  State<MyCars> createState() => _MyCarsState();
}

class _MyCarsState extends State<MyCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fixing Car',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w700, color: Colors.cyan),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: /*cars.isEmpty ? const Center(child: Text('No Cars'),) : */
          const ListCarsWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) => const NewCarDialog()),
        label: const Text(
          'Add New Car',
          style: TextStyle(
            fontSize: 25,
            color: Colors.cyan,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

class ListCarsWidget extends StatelessWidget {
  const ListCarsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FixingList()))
        ,
          contentPadding:
              const EdgeInsets.only(left: 80, top: 10),
          tileColor: const Color.fromARGB(52, 43, 74, 211),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('mark'),
          subtitle: const Text('model'),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
