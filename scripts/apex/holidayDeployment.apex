MetadataService.MetadataPort service = MetadataServiceExamples.createService();
MetadataService.BusinessHoursSettings businessHoursSettings = new MetadataService.BusinessHoursSettings();
// Retrive org business hours settings
List<BusinessHours> orgBusinessHours = new List<BusinessHours>();
orgBusinessHours = [
  SELECT
    Name,
    IsActive,
    IsDefault,
    FridayEndTime,
    FridayStartTime,
    MondayEndTime,
    MondayStartTime,
    SaturdayEndTime,
    SaturdayStartTime,
    SundayEndTime,
    SundayStartTime,
    ThursdayEndTime,
    ThursdayStartTime,
    TimeZoneSidKey,
    TuesdayEndTime,
    TuesdayStartTime,
    WednesdayEndTime,
    WednesdayStartTime
  FROM BusinessHours
];

// Create a business hour configuration
List<MetadataService.BusinessHoursEntry> businessHoursEntry = new List<MetadataService.BusinessHoursEntry>();

// For each org returned business hour. Add to list of metadata service BusinessHoursEntry
for (BusinessHours entry : orgBusinessHours) {
  MetadataService.BusinessHoursEntry currentBusinessHours = new MetadataService.BusinessHoursEntry();
  currentBusinessHours.name = entry.Name;
  currentBusinessHours.active = entry.IsActive;
  currentBusinessHours.default_x = entry.IsDefault;
  currentBusinessHours.fridayEndTime = entry.FridayEndTime;
  currentBusinessHours.fridayStartTime = entry.FridayStartTime;
  currentBusinessHours.mondayEndTime = entry.MondayEndTime;
  currentBusinessHours.mondayStartTime = entry.MondayStartTime;
  if (entry.SaturdayEndTime != null) {
    currentBusinessHours.saturdayEndTime = entry.SaturdayEndTime;
  }

  if (entry.SaturdayStartTime != null) {
    currentBusinessHours.saturdayStartTime = entry.SaturdayStartTime;
  }
  if (entry.SundayEndTime != null) {
    currentBusinessHours.sundayEndTime = entry.SundayEndTime;
  }
  if (entry.SundayStartTime != null) {
    currentBusinessHours.sundayStartTime = entry.SundayStartTime;
  }
  currentBusinessHours.thursdayEndTime = entry.ThursdayEndTime;

  currentBusinessHours.thursdayStartTime = entry.ThursdayStartTime;

  currentBusinessHours.timeZoneId = entry.TimeZoneSidKey;
  currentBusinessHours.tuesdayEndTime = entry.TuesdayEndTime;

  currentBusinessHours.tuesdayStartTime = entry.TuesdayStartTime;
  currentBusinessHours.wednesdayEndTime = entry.WednesdayEndTime;
  currentBusinessHours.wednesdayStartTime = entry.WednesdayStartTime;
  System.debug('currentBusinessHours =>' + currentBusinessHours);

  businessHoursEntry.add(currentBusinessHours);
}

System.debug('businessHoursEntry =>' + businessHoursEntry);

// Create a holiday
MetadataService.Holiday holidayItem = new MetadataService.Holiday();
holidayItem.activityDate = Date.newInstance(2022, 4, 22);
holidayItem.businessHours = new List<String>{ 'Work Hours' };
holidayItem.name = 'Erlend test holiday';

// Add the holiday and business hours to the list
// businessHoursSettings.holidays = new List<MetadataService.Holiday>{
//   holidayItem
// };
businessHoursSettings.businessHours = businessHoursEntry;

// Get the results from the deployment
List<MetadataService.SaveResult> results = service.updateMetadata(
  new List<MetadataService.Metadata>{ businessHoursSettings }
);
MetadataServiceExamples.handleSaveResults(results[0]);
