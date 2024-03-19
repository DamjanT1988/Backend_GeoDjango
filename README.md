# GIS Fältkart Applikation - Backend

## Översikt
Backend för GIS fältkartapplikationen är utvecklad med Django och GeoDjango för att hantera geospatiala data. Detta tillhandahåller en robust plattform för fältkartläggning och hantering av GIS-projekt.

## Teknikstack
- **Django**: Ett högnivå Python webbramverk som uppmuntrar snabb utveckling och ren, pragmatisk design.
- **GeoDjango**: Ett Django-tillägg som är utformat för att hantera geospatiala databaser och utföra GIS-operationer.
- **PostgreSQL**: En kraftfull, öppen källkods objekt-relationell databashanterare.
- **PostGIS**: Ett PostgreSQL-tillägg som ger stöd för geografiska objekt och möjliggör platsspecifika frågor.

## Funktioner
- **Användarautentisering**: Stöd för användarregistrering, inloggning och sessionshantering.
- **Databasintegration**: Modeller och databasdesign för att lagra användardata, projektinformation och geospatiala data.
- **GIS Funktionalitet**: Hantering och analys av spatiala data, inklusive stöd för import och export av olika GIS-filformat.
- **API**: RESTful API för kommunikation med frontend, inklusive endpoints för användarhantering, projektdata och GIS-funktionalitet.
- **Säkerhet**: Implementering av säkerhetsåtgärder för att skydda känslig data och användarinformation.

## Installation och Konfiguration
Följ dessa steg för att sätta upp backend på din lokala utvecklingsmiljö:

1. **Klona repot**:
    ```
    git clone <repo-url>
    ```

2. **Skapa och aktivera en virtuell miljö** (rekommenderat):
    ```
    pipenv shell
    ```

3. **Installera beroenden**:
    ```
    pipenv install
    ```

4. **Konfigurera din databas**:
    Skapa en PostgreSQL-databas och konfigurera PostGIS. Uppdatera sedan `settings.py` med din databasinformation.

5. **Utför databasmigrationer**:
    ```
    python manage.py migrate
    ```

6. **Starta utvecklingsservern**:
    ```
    python manage.py runserver
    ```

## Dokumentation
Ytterligare dokumentation och API-specifikationer finns i projektrepot. Se även Django och GeoDjango-dokumentationen för mer detaljerad information om användning och konfiguration.
