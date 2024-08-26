class ThemeDataMenuItem{
  final String theme;

  ThemeDataMenuItem({required this.theme});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ThemeDataMenuItem) return false;
    return other.theme == theme;
  }

  @override
  int get hashCode => theme.hashCode;
}