// Value Notifier: holde data
// Value Listenable Builder: listen to data change (do not need set state)

import 'package:flutter/widgets.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);

ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(false);

