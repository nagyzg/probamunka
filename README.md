# Próbamunka

A feladat SugarCRM 6.5 Community rendszerben lett meghatározva

## 1. Telepítés
A repository klónozása után végezd el az installálást. Ehez szükséged lesz egy webszerverre és egy (lehetőleg) mysql adatbázis kezelőre

## 2. Fejlesztési feladatok

Az alábbiakban leírt kis fejlesztést kellene megpróbálnod megoldani. Az egyes feladatok mögé mankónak megadom azokat a kulcs kifejezéseket, amelyek segítenek azonosítani a rendszer terminológiája szerinti azon komponenseket ahol a feladat megoldható

[SugarCRM fejlesztői dokumentáció](http://support.sugarcrm.com/Documentation/Sugar_Developer/Sugar_Developer_Guide_6.5/)

Örülnék ha a feladatokat programozás technikai eszközökkel próbálnád megoldani és nem a Studio nevű beépített eszközzel.

### Feladatok:
* Az Opportunities modul ```Lead Source``` select mezője kapjon egy új kiválasztható értéket : ```Advertisement``` ( $app_strings - language string szerkesztése)
* Az Opportunities modul kapjon egy új select mezőt. A mező neve ```Type of Advertisement``` értékei: ```TV, Radio, Newspaper```. ($app_strings - language string és Opportunity vardef)
* Az új mező csak akkor jelenjen meg az EditView felületen, ha a felhasználó az első lépésben létrehozott új "Lead Source" opciót választotta. (editviewdefs metadata és kliens oldali javascript logika)
* Az ```Accounts``` modulba vegyél fel egy új mezőt: ```VAT number``` a mező típusa legyen varchar és jelenjen meg mindhárom nézetben (list, detail, edit) és az advanced search kereső űrlapon is (vardef és metadata)
