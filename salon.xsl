<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Salon samochodowy</title>
      </head>
      <body>
        <h1>Salon samochodowy</h1>
        <!-- blok na samochody -->
        <div id="samochody" style="background-color: #535afc; width:40%; display: inline-block; position: static">
          <h2>Samochody</h2>
            <xsl:for-each select="salon/samochody/samochod">
              <!-- kontener dla kazdego samochodu-->
              <div class="samochod" style="display:block; background-color: #9196ff; border: dashed 1px; margin: 10px 10px 10px 10px;">
                <!--nazwa samochodu -->
                <h3><xsl:value-of select="nazwa/marka"/><xsl:text> </xsl:text><xsl:value-of select="nazwa/model"/></h3>
                <!--id samochodu-->
                <h4><b>ID:</b><xsl:text> </xsl:text> <xsl:value-of select="@id"/></h4>
                <!--parametry samochodu -->
                <ul>
                  <li><b>Rocznik:</b><xsl:text> </xsl:text><xsl:value-of select="rocznik"/></li>
                  <li><b>Kolor:</b><xsl:text> </xsl:text><xsl:value-of select="kolor"/></li>
                  <li><b>Paliwo:</b><xsl:text> </xsl:text><xsl:value-of select="bak/paliwo"/></li>
                  <xsl:if test="bak/paliwo != 'naped elektryczny'">
                    <li><b>Pojemnosc:</b><xsl:text> </xsl:text><xsl:value-of select="bak/pojemnosc"/></li>
                  </xsl:if>
                  <li><b>Przebieg:</b><xsl:text> </xsl:text><xsl:value-of select="przebieg"/></li>
                  <li><b>Moc:</b><xsl:text> </xsl:text><xsl:value-of select="moc"/></li>
              </ul>
              
              <h4><b><u>Cena:</u><xsl:text> </xsl:text><xsl:value-of select="cena"/></b></h4>
            </div>
          </xsl:for-each>
        </div>
        <!-- kontener na zamowienia -->
        <div id="zamowienia" style="background-color: #44f45c; width:40%; display: inline-block; vertical-align: top">
          <h2>Zamowienia</h2>
          <xsl:for-each select="salon/zamowienia/zamowienie">
            <!--kontener dla kazdego zamowienia-->
            <div class="zamowienie" style="display: block; background-color: #1d8e43; border: dashed 1px; margin: 10px 10px 10px 10px">
              <!--id-->
              <h4><u>ID zamowienia:</u><xsl:text> </xsl:text><xsl:value-of select="@id"/></h4>
              <!-- dane zamowienia-->
              <ul>
                <li><b>Imie i nazwisko: </b><xsl:value-of select="imie"/> <xsl:text> </xsl:text><xsl:value-of select="nazwisko"/> </li>
                <li><b>PESEL:</b> <xsl:value-of select="pesel"/></li>
                <li><b>ID samochodu:</b> <xsl:value-of select="@id_samochodu"/></li>
              </ul>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
