import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/stream_builder/counter_bloc.dart';
import 'package:mighty_ui_kit/stream_builder/counter_event.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  final _bloc = CounterBLoC();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      floatingActionButton: _getButton()
    );
  }

  @override
  dispose(){
    super.dispose();
    _bloc.dispose();
  }

  _getBody(){
    return StreamBuilder(
        stream: _bloc.stream_counter,
        initialData: 0,
        builder: (context, snapshot) {
          return Center(
            child: Text(snapshot.data.toString(),style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.5),),
          );
        }
    );
  }

  _getButton(){
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _bloc.counter_event_sink.add(IncrementEvent()),
    );
  }

}