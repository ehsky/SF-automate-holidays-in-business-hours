<!--
  Title: Automatiser helligdager og åpningstider i Salesforce
  Description:Automatiser opprettelsen av helligdager for over 100 land i din Salesforce Org. Repoet inkluderer en planlagt flyt mal for automatisk oppretter helligdager under den gjeldende aktive "Organisasjonens arbeidstid" konfigurasjon.
  Author: https://www.linkedin.com/in/hansenerlend/
  -->

# Automatiser hellidager og åpningstider i Salesforce

🚀 **versjon 1.0.1** 🌏
[Engelsk](https://github.com/ehsky/SF-automate-holidays-in-business-hours/blob/master/README.md),
[Norsk](https://github.com/ehsky/SF-automate-holidays-in-business-hours/blob/master/README.no.md)

Automatiser opprettelsen av helligdager for over 100 land i din Salesforce Org. \
Dette repoet inkluderer en planlagt flyt mal for automatisk oppretter helligdager under den gjeldende aktive "Organisasjonens arbeidstid" konfigurasjon.

## Distribuer

Du kan bruke hurtiginstallasjons verktøyet her for å distribuere direkte til din Salesforce org. \
[![Distribuer til salesforce](/.assets/deploy.png)](https://githubsfdeploy.herokuapp.com/?owner=ehsky&repo=SF-automate-holidays-in-business-hours)

### Konfigurasjonsalternativer

Den medfølgende flytmalen bruker landskoden for brukeren som startet flyten for å bestemme hvilke helligdager som importeres. \
Den vil kun importere for det gjeldende år. Dette kan også konfigureres manuelt i Flyt handlingen under konfigurasjonsalternativene **countryCode** og **year**.\
Se listen nedenfor for støttede land. \
![Konfigurasjonsalternativer for flythandling](/.assets/configPublicHolidayV3PublicHolidaysV3.png)

Som standard kjøres den planlagte flyten hver uke og sjekker om gjeldende dato er nyttårsdag. \
Denne ekstra flytbeslutningen skyldes begrensninger på frekvens på flyt typen "Schedule". \
Dette kan selvfølgelig endres etter eget ønske.

## Demo Salesforce org

Du kan raskt spinne opp en Salesforce org. ved å klikke på bildet nedenfor. \
Det vil da opprette en scratch org. som du har tilgang til i 1 dag. \
[![Demo scratch org](/.assets/deployDemo.png)](https://hosted-scratch.herokuapp.com/launch?template=https://github.com/ehsky/SF-automate-holidays-in-business-hours)

## Støttede helligdager etter land

Se den fullstendige oppdaterte listen over støttede helligdager pr. [land her.](https://date.nager.at/Country) \
Fra **_21.04.2022_** støtter Flyt API Handlingen følgende land:

| Land                         | Landskode |
| :--------------------------- | :-------- |
| Andorra                      | AD        |
| Albania                      | AL        |
| Argentina                    | AR        |
| Østerrike                    | AT        |
| Australia                    | AU        |
| Åland Islands                | AX        |
| Bosnia-Hercegovina           | BA        |
| Barbados                     | BB        |
| Belgia                       | BE        |
| Bulgaria                     | BG        |
| Benin                        | BJ        |
| Bolivia                      | BO        |
| Brasil                       | BR        |
| Bahamas                      | BS        |
| Botswana                     | BW        |
| Hviterussland                | BY        |
| Belize                       | BZ        |
| Canada                       | CA        |
| Sveits                       | CH        |
| Chile                        | CL        |
| Kina                         | CN        |
| Colombia                     | CO        |
| Costa Rica                   | CR        |
| Cuba                         | CU        |
| Kypros                       | CY        |
| Tsjekkia                     | CZ        |
| Tyskland                     | DE        |
| Danmark                      | DK        |
| Den dominikanske republikken | DO        |
| Ecuador                      | EC        |
| Estland                      | EE        |
| Egypt                        | EG        |
| Spania                       | ES        |
| Finland                      | FI        |
| Færøyene                     | FO        |
| Frankrike                    | FR        |
| Gabon                        | GA        |
| Storbritannia                | GB        |
| Grenada                      | GD        |
| Guernsey                     | GG        |
| Gibraltar                    | GI        |
| Grønland                     | GL        |
| Gambia                       | GM        |
| Hellas                       | GR        |
| Guatemala                    | GT        |
| Guyana                       | GY        |
| Honduras                     | HN        |
| Kroatia                      | HR        |
| Haiti                        | HT        |
| Ungarn                       | HU        |
| Indonesia                    | ID        |
| Irland                       | IE        |
| Isle of Man                  | IM        |
| Island                       | IS        |
| Italia                       | IT        |
| Jersey                       | JE        |
| Jamaica                      | JM        |
| Japan                        | JP        |
| Sør-Korea                    | KR        |
| Liechtenstein                | LI        |
| Lesotho                      | LS        |
| Litauen                      | LT        |
| Luxembourg                   | LU        |
| Latvia                       | LV        |
| Marokko                      | MA        |
| Monaco                       | MC        |
| Moldova                      | MD        |
| Montenegro                   | ME        |
| Madagaskar                   | MG        |
| Nord-Makedonia               | MK        |
| Mongolia                     | MN        |
| Montserrat                   | MS        |
| Malta                        | MT        |
| Mexico                       | MX        |
| Mozambique                   | MZ        |
| Namibia                      | NA        |
| Niger                        | NE        |
| Nigeria                      | NG        |
| Nicaragua                    | NI        |
| Nederland                    | NL        |
| Norge                        | NEI       |
| New Zealand                  | NZ        |
| Panama                       | PA        |
| Peru                         | PE        |
| Papua Ny-Guinea              | PG        |
| Polen                        | PL        |
| Puerto Rico                  | PR        |
| Portugal                     | PT        |
| Paraguay                     | PY        |
| Romania                      | RO        |
| Serbia                       | RS        |
| Russland                     | RU        |
| Sverige                      | SE        |
| Singapore                    | SG        |
| Slovenia                     | SI        |
| Svalbard og Jan Mayen        | SJ        |
| Slovakia                     | SK        |
| San Marino                   | SM        |
| Surinam                      | SR        |
| El Salvador                  | SV        |
| Tunisia                      | TN        |
| Tyrkia                       | TR        |
| Ukraina                      | UA        |
| USA                          | USA       |
| Uruguay                      | UY        |
| Vatikanstaten                | VA        |
| Venezuela                    | VE        |
| Vietnam                      | VN        |
| Sør-Afrika                   | ZA        |
| Zimbabwe                     | ZW        |

## Ytterligere dokumentasjon

- [Flyt API Handling Dokumentasjon](https://date.nager.at/swagger/index.html)
- [Flyt navnekonvensjon](https://wiki.sfxd.org/books/best-practices/page/flow-naming-conventions)
