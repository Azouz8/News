class CountryMenuItem {
  final String country;

  CountryMenuItem({required this.country});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CountryMenuItem) return false;
    return other.country == country;
  }

  @override
  int get hashCode => country.hashCode;
}
