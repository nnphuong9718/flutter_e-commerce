import 'package:flutter_bloc/flutter_bloc.dart';

enum BuyEvent { clicked }

class DetailBloc extends Bloc<BuyEvent, bool> {
  @override
  bool get initialState => false;

  @override
  Stream<bool> mapEventToState(BuyEvent event) async* {
    switch (event) {
      case BuyEvent.clicked:
        print('added to cart');
    }
  }
}
