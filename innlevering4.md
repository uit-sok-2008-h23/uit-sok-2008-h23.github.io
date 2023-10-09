{% include top-box.html %} <!-- Kode for å inkludere boksen på toppen av siden. Se _config.yml for å gjøre endringer. -->
{% include navbar.html %} <!-- Kode for navigasjonsmeny. Se navbar.html for å gjøre endringer. -->
<!-- Gjør endringer under her -->

# Utfordring 2
### <span style="color:OrangeRed;"> Frist: 20. oktober kl 16:00 </span>
Du finner detaljert informasjon og tips om hvordan skrive en god besvarelse nederst på denne siden.
Du vil få mulighet å jobbe med oppgavene på et utfordringsseminar knyttet til temaet. Forelesere på kurset vil være tilstede for å svare på spørsmål. 

**Førberedelser og støtte:**
Kode:
-  [Hjelpe-dokument for å lage figurene R](https://uit-sok-2008-h23.github.io/assets/Utf2_kodehjelp.R)
  
Litteratur:

- Boeri og van Ours. Kapittel 2 og 3
- NOU 2021:9

[Forelesningsnotater](forelesninger.md#f_t1)

[Videoer](video.md#v_t1)

# Oppgaver
## Utfordring 2.1 - Minstelønn
1. Bruk økonomisk teori og grafisk analyse til å gi intuisjon til begge disse påstandene:

   * «Minstelønninger fører til **økt** fattigdom».
   * «Minstelønninger fører til **mindre** fattigdom». 

2. Eurostat har data på minstelønninger i prosent av gjennomsnittlig bruttoinntekt (earn_mw_avgr2) og sysselsetting (lfsi_emp_a). Hent ut data for sysselsetting i befolkningen i alderen 20 -64, og minstelønn som andel av gjennomsnittlig inntekt for året 2021. Lag en graf som illustrerer sammenhengen. Dersom du bruker ggplot i Rstudio, kan du bruke kommandoen: «geom_smooth(method=lm, se=FALSE)» til å få fram en korrelasjonslinje.
  
   *	Hvilken av påstandene i Utfordring 2.1.1 ser den observerte sammenhengen ut å gi støtte til?
   *	Sammenhengen mellom nivået på minstelønn og arbeidsledighetsraten er en korrelasjon. Diskuter årsaker til at vi ikke kan trekke konklusjonen at denne korrelasjonen indikerer et kausalt samband, og beskriv en metode som kan hjelpe til å identifisere kausale effekter.   

## Utfordring 2.2 - Fagforeninger

1. Bruk økonomisk teori og grafisk analyse til å gi intuisjon til påstanden «Sterke fagforeninger reduserer velferden».
   
3. OECD har informasjon om organisasjonsgraden i fagforeninger (union density) og arbeidsledighetsraten i ulike land. Datasettet «TUD» i R-pakken oecd inneholder data på organisasjonsgrad (ObsValue = organisasjonsgrad). Datasettet «MIG_NUP_RATES_GENDER» inneholder informasjon om arbeidsledighet i ulike grupper (ObsValue = arbeidsledighetsrate). Bruk data for år 2018, og for begge kjønn (GENDER = TOT). Dersom du bruker ggplot i Rstudio, kan du bruke kommandoen: «geom_smooth(method=lm, se=FALSE)» til å få fram en korrelasjonslinje. 

   * Bruk data for innenlandsfødte (BIRTH = NB) og utenlandsfødte (BIRTH  = FB) til å lage to grafer som viser sammenhengen mellom organisasjonsgraden i fagforeninger og nivået på arbeidsledigheten i ulike land for de to gruppene. Diskuter dine empiriske observasjoner ut fra økonomisk teori om forhandling mellom arbeidsmarkedets parter og medlemsbasens sammensetning. 

### Innlevering
Innleveringene skal skje individuelt.

Utfodringene skal leveres i Canvas. Kode og redegjørelser for bruk av kunstig intelligens leveres som appendiks i oppgaven (enten i et separat eller i samme dokument). 

**NB: Det er utrolig viktig at du bruker følgende navn på din innlevering! "[ditt kandidatnummer]sok_2008_h23_utf2"**
Vi trenger ditt kandidatnummer for å gi en eventuell klagekommisjon tilgang til din oppgave. 
 
### Evaluering
Utfordringene blir bedømt i henhold til regelen i Tabell 2. Det vil være mulig å få 0.5 og 1.5 poeng på utfordringene.

**NB: Utfordringen består av flere deloppgaver. Envher av disse deloppgaver må besvares. Hvis en av deloppgavene ikke er besvart, eller er besvart svært ufullstendig eller felaktig, er det fullt mulig å få null poeng på innleveringen.**

**Tabell 2.** Regel for poengsetting av innleveringsoppgaver

| Poeng | Beskrivelse |
| ----- |------------ |
| 2 | Svært godt gjennomført. Alle spørsmål er fullstendig besvarte. Det er enkelt å følge resonnementene. Det gis god økonomisk intuisjon til alle oppgaver. Matematikken er i stort korrekt og enkel å følge. Det finnes ikke store feil. Kode er lastet opp på Github og lagt til som appendiks til i oppgaven. Studenten har gjort rede for bruk av KI. Oppgave og kode er ryddig skreven.|
| 1 | Tilstrekkelig godt gjennomført. Alle spørsmål er besvarte eller så er nesten alle spørsmål besvarte OG det gis en god gjennomgang av problemer med ubesvarte oppgaver. Det går å følge resonnementene. Det gis økonomisk intuisjon. Det kan finnes små feil i matematikken, men ikke store feil. Kode er lastet opp på Github og lagt til som appendiks til i oppgaven. Studenten har gjort rede for bruk av KI. Oppgaven er ryddig skreven. |
| 0 | Ikke tilstrekkelig godt gjennomført. Ikke alle spørsmål er besvarte og studenten gir ikke en god gjennomgang av problemer med ubesvarte oppgaver ELLER det er svært vanskelig å følge resonnementene i oppgaven ELLER det gis ikke økonomisk intuisjon ELLER det finnes store feil i matematikken, og/eller den økonomiske intuisjonen. |


### Plagiat og juks

Det er tillatt å arbeide med oppgavene sammen med andre. Hver enkelt student skal likvel skrive og levere inn sine utfordringer individuelt. Med andre ord må hver enkelt student produsere sin egen tekst, figurer, koder og så videre. Det er ikke lov å levere inn helt eller nesten identiske oppgaver. Det er altså ikke lov å kun bytte ut noen ord i sin innlevering. Vi bruker URKUND for å sjekke for plagiering. Vi er bevisst på at oppgavene vil være relativt lik og vil ta høyde for dette når vi evaluerer resultatene fra URKUND. 

### Bruk av kunstig intelligens (KI)
Hver innlevering **skal** inneholde en deklarasjon om bruk av KI. Deklarasjonen skal settes inn i et appendiks til oppgaven. **Du må ha med deklarasjonen selv om du ikke har brukt KI**.

Dersom du bruker kunstig intelligens for å løse oppgaven skal du oppgi hvilken KI du brukte. Du må også gjøre rede for de spørsmål du stilte til KI:n, hvilket svar du fikk, og i hvilken grad du endret svaret/koden fra KI:n. Regegjørelsen skal leveres som et appendiks til oppgaven. Dersom du ikke gjør rede for ditt bruk av KI:n, vil oppdekket bruk ses som juks. Du er selv ansvarlig for å sjekke innholdet i besvarelsen fra KI-verktøyet (ikke alt er riktig!), og du må passe på at besvarelsen din flyter godt (det vil trekke ned dersom sensoren ser tydelige forskjeller mellom egen tekst og tekst som er generert av KI).

### Tips og triks for hvordan du skriver en god besvarelse

#### Generelle tips

1. Skriv kortfattet og tydelig
2. Gå igjennom språket. Oppgaven skal skrives på godt akademisk språk, ikke i taleform.
3. Ha samme inndeling på ditt svar som det er i oppgaven.
4. Det er lov å bruke bilder på håndtegnede grafer og ligninger men jeg anbefaler å prøve å lage både ligninger og grafer digitalt. Hvis du bruker håndtegnede grafer eller ligninger, se til at både grafen i seg selv, og bildet av grafen er svært tydelig. Hvis jeg ikke kan se hva grafen viser kan jeg ikke gi poeng. 
5. Definere dine symboler hvis du bruker andre symboler enn de vi bruker under kurset.
6. Referere i teksten til de symboler som du analyserer, og beskriv dem i ord. F eks, en økning i arbeidstilbudet ($L^s$) fører til at…
7. Forklare dine ligninger og utledninger. Det er viktig at det går å følge dine utledninger og beregninger. 
8. Gi alltid økonomisk intuisjon (forklaring til dine svar). Det å skrive "Kurven skifter og vi går ifra A til B" er ikke tilstrekkelig. Et svar som gir økonomisk intuisjon forklarer effekten i økonomiske termer, f eks.; "Hvis innvandringen øker vil dette føre til at mengden arbeidere som er villige til å jobbe til en gitt timelønn øker, arbeidstilbudet ($L^s$) øker. Ved likevektslønna $w_0$ finnes det nå arbeidere som ønsker jobb men som ikke har jobb. Dette fører til en press nedåt på lønna. Når lønna synker finnes det flere bedrifter som er villige å ansette. Sysselsettingen øker. Den nye likevekts lønna gis av $w_1$. Sysselsettingen i den nye likvekten gis av $L_1$" 

#### Format
Du velger selv i hvilket format du ønsker å lage oppgaven. Det er lov å bruke Word, eller andre standard ordbehandlingsprogrammer. Dersom du ønsker å skrive oppgaven i Quarto finner du støtte til dette [her](https://quarto.org/).

#### Ligninger
Det er mulig å skrive ligninger i de fleste ordbehandlingsprogrammer. I word velger du «insert» og deretter «equation». Du får da opp en boks i teksten og en meny med symboler og funksjoner. Et tips er at «underscore» etter et tegn gir subscript hvis du trykker på mellomslag etterpå , og tegnet «’» gir superscript. 

Du finner flere tips og triks her:
* [Kort-kommandoer til Microsoft Equation Editor](https://mathiho.sitehost.iu.edu/doc/equation-editor-shortcut-commands.pdf)

#### Figurer og grafer
Det går å lage figurer ved bruk av en rekke verktøy, f.eks Rstudio og Python. Det er lov å tegne figurer i ved bruk av f.eks Word eller Power-point. Vår erfaring er at Power-point er bedre enn Word. Når du har laget en graf i Power-point kan du enten lagre denne som et bilde ved å høyre-klikke på den, eller kopiere den direkte og lime inn den som et bilde (lime inn spesial) i Word.

I noen oppgaver på kurset vil du lage grafer i R ved bruk av empiriske data. Når du laget en graf velger du først «eksportere» og deretter enten «save as image» eller «save as pdf». Du kan deretter lime in bildet i ditt Word-dokument. 

#### Tabeller

Det går å lage tabeller ved bruk av en rekke verktøy, f.eks. Excel og R. Det går å kopiere tabeller fra Excel og R og lime inn i Word. Hvis du er flink i f eks LaTeX så går det å skrive kode i R som lager TeX filer. 


#### Referanser
Hvis du bruker materiale utenfor pensum skal du bruke referanser, både i teksten, og i en referanseliste. Referanser i tekst skal inneholde etternavn på forfatter og år. Hvis det er flere enn to forfatter er det lov å bruke «et al». Det finnes to forskjellige måten å skrive referanser i tekst. Iblant henviser vi til en studie i teksten, f eks at Acemoglu et al (2001) fant at land en signifikant lenke mellom kolonial historie og nåværende økonomisk vekst. Et annet måte er å skrive at det ser ut å va en lenke mellom kolonial historie og nåværende økonomisk vekst (Acemoglu et al, 2001). Lengst ned i dokumentet skriver du en referanseliste. I Tabell 2 her nede ser du hvordan du refererer til ulike typer av skrevet materiale. 
 
 **Tabell 2.** Referanser

 
 | Type | Referanse |
|-------| ----------- |
| Vitenskapelige artikler og working-papers | Acemoglu, D., Johnson, S., and Robinsom, J. (2001). The Colonial Origins of Comparative Development: An Empirical Investigation. *American Economic Review*, 91(5), pp. 1369-1401 |
| Bøker | Lucas, R. E. (1976). Econometric Policy Evaluation: A Critique, in Brunner, K., and Metzer, A (eds), *The Phillips Curve and Labor Markets*, Carnegie Rochester Conference Series, New York, North Holland, pp. 19-46 |
| Artikler i aviser | Weisman, J. (2015). Deal Reached on Fast-Track Authority for Obama on Trade Accord. *The New York Times*, p.A1 |
| Artikler fra Internett | Messer, L. (2015). 'Fancy Nancy' Optioned by Disney Junior. [online] ABC News. Available at: http://abcnews.go.com/Entertainment/fancy-nancy-optioned-disney-junior-2017/story?id=29942496#.VRWbWJwmbs0.twitter (Accessed 31 Mar. 2015)|
