import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:intl/intl.dart';

class AddOffer extends StatefulWidget {
  const AddOffer({super.key});

  @override
  State<AddOffer> createState() => _AddOfferState();
}

class _AddOfferState extends State<AddOffer> {
  TextEditingController inputDescription = TextEditingController();
  TextEditingController inputDate = TextEditingController();
  TextEditingController inputHour = TextEditingController();
  TextEditingController inputAdress = TextEditingController();
  List<dynamic> countrie = [];
  List<dynamic> statesMaster = [];
  List<dynamic> states = [];

  String? countryId;
  String? stateId;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countrie.add({"id" : "1", "label": "Congo"});
    countrie.add({"id" : "2", "label": "RDC"});
    statesMaster = [
      {"ID": 1, "Name": "Assam", "ParendId": 1},
      {"ID": 2, "Name": "Assam", "ParendId": 2},
      {"ID": 3, "Name": "Assam", "ParendId": 3},
    ];
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Home"),),
        body: ListView(
          children: [
            
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: FormHelper.dropDownWidget(
                context,
                "Quel est le type de travaux à réaliser ?",
                countryId,
                countrie,
                (onChanged){
                  countryId = onChanged;
                  states = statesMaster.where(
                    (stateItem) => stateItem["ParentId"].toString() == onChanged.toString(),).toList();
                    stateId = null;
                },
                (onValidate){
                  if (onValidate == null) {
                    return "Please select country";
                  }
                  return null;
                },
                borderColor: Theme.of(context).primaryColor,
                borderFocusColor: Theme.of(context).primaryColor,
                borderRadius: 10,
                optionValue: "id",
                optionLabel: "label"
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 15),
              child: FormHelper.dropDownWidget(
                context,
                "",
                countryId,
                countrie,
                (onChanged){
                  countryId = onChanged;
                  states = statesMaster.where(
                    (stateItem) => stateItem["ParentId"].toString() == onChanged.toString(),).toList();
                    stateId = null;
                },
                (onValidate){
                  if (onValidate == null) {
                    return "Please select country";
                  }
                  return null;
                },
                borderColor: Theme.of(context).primaryColor,
                borderFocusColor: Theme.of(context).primaryColor,
                borderRadius: 10,
                optionValue: "id",
                optionLabel: "label"
              ),
            ),

            Text("Quel jour vous convient le mieux ?"),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: inputDate,
                minLines: 1,
                maxLines: 2,
                decoration: InputDecoration(
                  labelText: 'Choisir une date',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1.5, color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onTap: () async{
                  DateTime? pickeddate = await showDatePicker(
                    context: context, 
                    initialDate: DateTime.now(), 
                    firstDate: DateTime.now(), 
                    lastDate: DateTime(2100)
                  );

                  if (pickeddate != null) {
                    setState(() {
                      inputDate.text = DateFormat("dd/MM/yyyy").format(pickeddate);
                    });
                  }
                },
              ),
            ),

            Text("Quel est l'heure qui vous convient ?"),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: inputHour,
                minLines: 1,
                maxLines: 2,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1.5, color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onTap: () async{
                  TimeOfDay? time = await showTimePicker(
                    context: context, 
                    initialTime: TimeOfDay.now());

                  if (time != null) {
                    setState(() {
                      inputHour.text = time.format(context).toLowerCase();
                    });
                  }
                },
              ),
            ),

            Text("Quelle est l'adresse de la prestation ?"),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: inputAdress,
                minLines: 1,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1.5, color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: inputDescription,
                minLines: 3,
                maxLines: 7,
                decoration: InputDecoration(
                  labelText: 'Description',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1.5, color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}