class TogglMe {
  TogglMe(
    this.id,
    this.apiToken,
    this.email,
    this.fullName,
    this.timeZone,
    this.beginningOfWeek,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.countryId,
  );
  TogglMe.readJson(dynamic jsonString)
      : id = jsonString['id'],
        apiToken = jsonString['api_token'],
        email = jsonString['email'],
        fullName = jsonString['fullname'],
        timeZone = jsonString['timezone'],
        beginningOfWeek = jsonString['beginning_of_week'],
        imageUrl = jsonString['image_url'],
        createdAt = DateTime.parse(jsonString['created_at']),
        updatedAt = DateTime.parse(jsonString['updated_at']),
        countryId = jsonString['country_id'];

  final int id;
  final String apiToken;
  final String email;
  final String fullName;
  final String timeZone;
  final int beginningOfWeek;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int countryId;
}
