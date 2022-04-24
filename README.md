<!--
  Title: Automate public holidays in Salesforce
  Description: Automate your creation of public holidays for over 100 countries in your salesforce org. This repo includes a template to scheduled Flow that will automatically create holidays under the current active "Organization business hour" config for your org.
  Author: https://www.linkedin.com/in/hansenerlend/
  -->
## OBS: Work in progress
**This repo is work in progress.** \
There is one issue that needs to be fixed first before the example flow can be used. \
The example flow will create the holiday records and find the default Business hour config, but will not assosicate the holiday records with business hour config. \
Check out the salesforce ide here https://ideas.salesforce.com/s/idea/a0B8W00000GddBHUAZ/expose-junction-between-business-hours-and-holidays

A potential workarround could be to include a minified version of [apex-mdapi](https://github.com/financialforcedev/apex-mdapi) that can deploy the metadata type [BusinessHoursSettings](https://developer.salesforce.com/docs/atlas.en-us.236.0.api_meta.meta/api_meta/meta_businesshourssettings.htm).
  

# Automate public holidays in Salesforce

🚀 **version 1.0.1** 🌏
[English](https://github.com/ehsky/SF-automate-holidays-in-business-hours/blob/master/README.md),
[Norwegian](https://github.com/ehsky/SF-automate-holidays-in-business-hours/blob/master/README.no.md)

Automate your creation of public holidays for over 100 countries in your salesforce org. \
This repo includes a template to scheduled Flow that will automatically create holidays under the current active "Organization business hour" config for your org.

## Deploy

You can use the quick installer here to deploy directly to your org. \
[![Deploy to salesforce](/.assets/deploy.png)](https://githubsfdeploy.herokuapp.com/?owner=ehsky&repo=SF-automate-holidays-in-business-hours)

### Configuration option

The provided Flow template uses the flow running users country code to determine witch public holidays to get and the current dates year. \
This can be manually set in the Flow Action under configuration options **countryCode** and **year**.\
Se the list below for supported countries. \
![Configuration options for Flow Action](/.assets/configPublicHolidayV3PublicHolidaysV3.png)

By default the scheduled flow is run every week and checking if current date is new year's day. \
This additional flow decisions is due to limitation on frequency on the flow type "Schedule". \
This can of course be modified to your liking.

## Demo Salesforce org

You can quickly spin up an org by clicking on the picture below. \
This will create a scratch org that you have access to for 1 day \
[![Demo scratch org](/.assets/deployDemo.png)](https://hosted-scratch.herokuapp.com/launch?template=https://github.com/ehsky/SF-automate-holidays-in-business-hours)

### Flow overview

The provided template flow is intended as a no-code deploy example of how this can be built. \
Your free to customize this the way you see fit.
![Example Flow Overview](/.assets/flowOverview.png)

## Supported public holidays by countries

Se the full updated list of supported holidays for [countries here.](https://date.nager.at/Country) \
As of **_21.04.2022_** the Flow API Action supports the following countries:

| Country                | CountryCode |
| :--------------------- | :---------- |
| Andorra                | AD          |
| Albania                | AL          |
| Argentina              | AR          |
| Austria                | AT          |
| Australia              | AU          |
| Åland Islands          | AX          |
| Bosnia and Herzegovina | BA          |
| Barbados               | BB          |
| Belgium                | BE          |
| Bulgaria               | BG          |
| Benin                  | BJ          |
| Bolivia                | BO          |
| Brazil                 | BR          |
| Bahamas                | BS          |
| Botswana               | BW          |
| Belarus                | BY          |
| Belize                 | BZ          |
| Canada                 | CA          |
| Switzerland            | CH          |
| Chile                  | CL          |
| China                  | CN          |
| Colombia               | CO          |
| Costa Rica             | CR          |
| Cuba                   | CU          |
| Cyprus                 | CY          |
| Czechia                | CZ          |
| Germany                | DE          |
| Denmark                | DK          |
| Dominican Republic     | DO          |
| Ecuador                | EC          |
| Estonia                | EE          |
| Egypt                  | EG          |
| Spain                  | ES          |
| Finland                | FI          |
| Faroe Islands          | FO          |
| France                 | FR          |
| Gabon                  | GA          |
| United Kingdom         | GB          |
| Grenada                | GD          |
| Guernsey               | GG          |
| Gibraltar              | GI          |
| Greenland              | GL          |
| Gambia                 | GM          |
| Greece                 | GR          |
| Guatemala              | GT          |
| Guyana                 | GY          |
| Honduras               | HN          |
| Croatia                | HR          |
| Haiti                  | HT          |
| Hungary                | HU          |
| Indonesia              | ID          |
| Ireland                | IE          |
| Isle of Man            | IM          |
| Iceland                | IS          |
| Italy                  | IT          |
| Jersey                 | JE          |
| Jamaica                | JM          |
| Japan                  | JP          |
| South Korea            | KR          |
| Liechtenstein          | LI          |
| Lesotho                | LS          |
| Lithuania              | LT          |
| Luxembourg             | LU          |
| Latvia                 | LV          |
| Morocco                | MA          |
| Monaco                 | MC          |
| Moldova                | MD          |
| Montenegro             | ME          |
| Madagascar             | MG          |
| North Macedonia        | MK          |
| Mongolia               | MN          |
| Montserrat             | MS          |
| Malta                  | MT          |
| Mexico                 | MX          |
| Mozambique             | MZ          |
| Namibia                | NA          |
| Niger                  | NE          |
| Nigeria                | NG          |
| Nicaragua              | NI          |
| Netherlands            | NL          |
| Norway                 | NO          |
| New Zealand            | NZ          |
| Panama                 | PA          |
| Peru                   | PE          |
| Papua New Guinea       | PG          |
| Poland                 | PL          |
| Puerto Rico            | PR          |
| Portugal               | PT          |
| Paraguay               | PY          |
| Romania                | RO          |
| Serbia                 | RS          |
| Russia                 | RU          |
| Sweden                 | SE          |
| Singapore              | SG          |
| Slovenia               | SI          |
| Svalbard and Jan Mayen | SJ          |
| Slovakia               | SK          |
| San Marino             | SM          |
| Suriname               | SR          |
| El Salvador            | SV          |
| Tunisia                | TN          |
| Turkey                 | TR          |
| Ukraine                | UA          |
| United States          | US          |
| Uruguay                | UY          |
| Vatican City           | VA          |
| Venezuela              | VE          |
| Vietnam                | VN          |
| South Africa           | ZA          |
| Zimbabwe               | ZW          |

## Aditional documentation

- [Flow API Action Documentation](https://date.nager.at/swagger/index.html)
- [Flow naming convention](https://wiki.sfxd.org/books/best-practices/page/flow-naming-conventions)
