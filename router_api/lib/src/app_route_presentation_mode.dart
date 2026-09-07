/// Defines how a route is presented onto the screen.
sealed class AppRoutePresentationMode {
  const AppRoutePresentationMode();
}

/// The default platform routing animation (Slide up for Material, etc.)
class NativePresentationMode extends AppRoutePresentationMode {
  const NativePresentationMode();
}

/// Snaps to the screen instantly with no animation.
class NoTransitionPresentationMode extends AppRoutePresentationMode {
  const NoTransitionPresentationMode();
}
