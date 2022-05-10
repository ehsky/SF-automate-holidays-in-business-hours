/**
 * @description       :
 * @author            : erlend.hansen@stretch.no | https://trailblazer.me/id/ehansen7
 * @group             :
 * @last modified on  : 04-22-2022
 * @last modified by  : erlend.hansen@stretch.no | https://trailblazer.me/id/ehansen7
 **/
public with sharing class FlowAction_MetadataDeployBusinessHoursSettings {
  /**
   * Maybe on to something here
   */
  public GetHours() {
    // Construct unmanaged package with list of desired components to retrieve in zip
    MetadataService.MetadataPort service = MetadataRetrieveController.createService();
    MetadataService.RetrieveRequest retrieveRequest = new MetadataService.RetrieveRequest();
    retrieveRequest.apiVersion = Integer.valueOf(
      new MetadataService.MetadataPort().endpoint_x.substringAfterLast('/')
    );
    retrieveRequest.packageNames = null;
    retrieveRequest.singlePackage = true;
    retrieveRequest.specificFiles = null;
    retrieveRequest.unpackaged = new MetadataService.Package_x();
    retrieveRequest.unpackaged.types = new List<MetadataService.PackageTypeMembers>();
    MetadataService.PackageTypeMembers packageType = new MetadataService.PackageTypeMembers();
    packageType.name = 'GETBusinessHours';
    packageType.members = new List<String>{ 'Settings', 'BusinessHours' };
    retrieveRequest.unpackaged.types.add(packageType);
    MetadataService.AsyncResult res = service.retrieve(retrieveRequest);
    System.debug('res => ' + res);
  }

  /**
   * Requiere this method maybe to get the businessHours settings
   */
  public class BusinessHoursSettings extends Metadata {
    public String type = 'BusinessHoursSettings';
    public String fullName;
    private String[] fullName_type_info = new List<String>{
      'fullName',
      SOAP_M_URI,
      null,
      '0',
      '1',
      'false'
    };
    public MetadataService.BusinessHoursEntry[] businessHours;
    public MetadataService.Holiday[] holidays;
    private String[] businessHours_type_info = new List<String>{
      'businessHours',
      SOAP_M_URI,
      null,
      '0',
      '-1',
      'false'
    };
    private String[] holidays_type_info = new List<String>{
      'holidays',
      SOAP_M_URI,
      null,
      '0',
      '-1',
      'false'
    };
    private String[] apex_schema_type_info = new List<String>{
      SOAP_M_URI,
      'true',
      'false'
    };
    private String[] type_att_info = new List<String>{ 'xsi:type' };
    private String[] field_order_type_info = new List<String>{
      'fullName',
      'businessHours',
      'holidays'
    };
  }
}
