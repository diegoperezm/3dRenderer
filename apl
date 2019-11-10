<?xml version='1.0' encoding='UTF-8' standalone='yes'?>

<!DOCTYPE Workspace
[
    <!ELEMENT Workspace (Value*,Ravel*,SymbolTable,Symbol*,Commands,StateIndicator)>
    <!ATTLIST Workspace  wsid       CDATA #REQUIRED>
    <!ATTLIST Workspace  year       CDATA #REQUIRED>
    <!ATTLIST Workspace  month      CDATA #REQUIRED>
    <!ATTLIST Workspace  day        CDATA #REQUIRED>
    <!ATTLIST Workspace  hour       CDATA #REQUIRED>
    <!ATTLIST Workspace  minute     CDATA #REQUIRED>
    <!ATTLIST Workspace  second     CDATA #REQUIRED>
    <!ATTLIST Workspace  timezone   CDATA #REQUIRED>
    <!ATTLIST Workspace  saving_SVN CDATA #REQUIRED>

        <!ELEMENT Value (#PCDATA)>
        <!ATTLIST Value flg    CDATA #REQUIRED>
        <!ATTLIST Value vid    CDATA #REQUIRED>
        <!ATTLIST Value parent CDATA #IMPLIED>
        <!ATTLIST Value rk     CDATA #REQUIRED>
        <!ATTLIST Value sh-0   CDATA #IMPLIED>
        <!ATTLIST Value sh-1   CDATA #IMPLIED>
        <!ATTLIST Value sh-2   CDATA #IMPLIED>
        <!ATTLIST Value sh-3   CDATA #IMPLIED>
        <!ATTLIST Value sh-4   CDATA #IMPLIED>
        <!ATTLIST Value sh-5   CDATA #IMPLIED>
        <!ATTLIST Value sh-6   CDATA #IMPLIED>
        <!ATTLIST Value sh-7   CDATA #IMPLIED>

        <!ELEMENT Ravel (#PCDATA)>
        <!ATTLIST Ravel vid    CDATA #REQUIRED>
        <!ATTLIST Ravel cells  CDATA #REQUIRED>

        <!ELEMENT SymbolTable (Symbol*)>
        <!ATTLIST SymbolTable size CDATA #REQUIRED>

            <!ELEMENT Symbol (unused-name|Variable|Function|Label|Shared-Variable)*>
            <!ATTLIST Symbol name       CDATA #REQUIRED>
            <!ATTLIST Symbol stack-size CDATA #REQUIRED>

                <!ELEMENT unused-name EMPTY>

                <!ELEMENT Variable (#PCDATA)>
                <!ATTLIST Variable vid CDATA #REQUIRED>

                <!ELEMENT Function (UCS)>
                <!ATTLIST Function creation-time   CDATA #IMPLIED>
                <!ATTLIST Function exec-properties CDATA #IMPLIED>

                <!ELEMENT Label (#PCDATA)>
                <!ATTLIST Label value CDATA #REQUIRED>

                <!ELEMENT Shared-Variable (#PCDATA)>
                <!ATTLIST Shared-Variable key CDATA #REQUIRED>

        <!ELEMENT UCS (#PCDATA)>
        <!ATTLIST UCS uni CDATA #REQUIRED>

        <!ELEMENT Commands (Command*)>
        <!ATTLIST Commands size CDATA #REQUIRED>

            <!ELEMENT Command (#PCDATA)>
            <!ATTLIST Command name       CDATA #REQUIRED>
            <!ATTLIST Command mode       CDATA #REQUIRED>
            <!ATTLIST Command fun       CDATA #REQUIRED>

        <!ELEMENT StateIndicator (SI-entry*)>
        <!ATTLIST StateIndicator levels CDATA #REQUIRED>

            <!ELEMENT SI-entry ((Execute|Statements|UserFunction),Parser+)>
            <!ATTLIST SI-entry level     CDATA #REQUIRED>
            <!ATTLIST SI-entry pc        CDATA #REQUIRED>
            <!ATTLIST SI-entry line      CDATA #REQUIRED>

                <!ELEMENT Statements (UCS)>

                <!ELEMENT Execute (UCS)>

                <!ELEMENT UserFunction (#PCDATA)>
                <!ATTLIST UserFunction ufun-name       CDATA #IMPLIED>
                <!ATTLIST UserFunction macro-num       CDATA #IMPLIED>
                <!ATTLIST UserFunction lambda-name     CDATA #IMPLIED>
                <!ATTLIST UserFunction symbol-level    CDATA #IMPLIED>

                <!ELEMENT Parser (Token*)>
                <!ATTLIST Parser size           CDATA #REQUIRED>
                <!ATTLIST Parser assign-pending CDATA #REQUIRED>
                <!ATTLIST Parser lookahead-high CDATA #REQUIRED>
                <!ATTLIST Parser action         CDATA #REQUIRED>
                    <!ELEMENT Token (#PCDATA)>
                    <!ATTLIST Token pc           CDATA #REQUIRED>
                    <!ATTLIST Token tag          CDATA #REQUIRED>
                    <!ATTLIST Token char         CDATA #IMPLIED>
                    <!ATTLIST Token int          CDATA #IMPLIED>
                    <!ATTLIST Token float        CDATA #IMPLIED>
                    <!ATTLIST Token real         CDATA #IMPLIED>
                    <!ATTLIST Token imag         CDATA #IMPLIED>
                    <!ATTLIST Token sym          CDATA #IMPLIED>
                    <!ATTLIST Token line         CDATA #IMPLIED>
                    <!ATTLIST Token vid          CDATA #IMPLIED>
                    <!ATTLIST Token index        CDATA #IMPLIED>
                    <!ATTLIST Token fun-id       CDATA #IMPLIED>
                    <!ATTLIST Token ufun-name    CDATA #IMPLIED>
                    <!ATTLIST Token symbol-level CDATA #IMPLIED>
                    <!ATTLIST Token comment      CDATA #IMPLIED>

]>


    <!-- hour/minute/second is )SAVE time in UTC (aka. GMT).
         timezone is offset to UTC in seconds.
         local time is UTC + offset -->
<Workspace wsid="./apl" year="2019" month="11" day="10"
           hour="20" minute="13" second="15" timezone="-10800"
           saving_SVN=" 1161">

  <Value flg="0x400" vid="0" parent="-1" rk="1" sh-0="21"/>
  <Value flg="0x400" vid="1" parent="-1" rk="1" sh-0="5"/>
  <Value flg="0x400" vid="2" parent="-1" rk="1" sh-0="256"/>
  <Value flg="0x400" vid="3" parent="-1" rk="0"/>
  <Value flg="0x400" vid="4" parent="-1" rk="0"/>
  <Value flg="0x400" vid="5" parent="-1" rk="0"/>
  <Value flg="0x400" vid="6" parent="-1" rk="0"/>
  <Value flg="0x400" vid="7" parent="-1" rk="0"/>
  <Value flg="0x400" vid="8" parent="-1" rk="0"/>
  <Value flg="0x400" vid="9" parent="-1" rk="1" sh-0="4"/>
  <Value flg="0x400" vid="10" parent="-1" rk="1" sh-0="2"/>
  <Value flg="0x400" vid="11" parent="-1" rk="0"/>
  <Value flg="0x400" vid="12" parent="-1" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="13" parent="-1" rk="1" sh-0="0"/>
  <Value flg="0x400" vid="14" parent="-1" rk="0"/>
  <Value flg="0x400" vid="15" parent="-1" rk="0"/>
  <Value flg="0x400" vid="16" parent="-1" rk="0"/>
  <Value flg="0x400" vid="17" parent="-1" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="18" parent="-1" rk="0"/>
  <Value flg="0x400" vid="19" parent="-1" rk="1" sh-0="6"/>
  <Value flg="0x400" vid="20" parent="-1" rk="0"/>
  <Value flg="0x400" vid="21" parent="-1" rk="0"/>
  <Value flg="0x400" vid="22" parent="-1" rk="0"/>
  <Value flg="0x400" vid="23" parent="-1" rk="2" sh-0="10" sh-1="10"/>
  <Value flg="0x400" vid="24" parent="-1" rk="0"/>
  <Value flg="0x400" vid="25" parent="-1" rk="0"/>
  <Value flg="0x400" vid="26" parent="-1" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="27" parent="-1" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="28" parent="-1" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="29" parent="-1" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="30" parent="-1" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="31" parent="9" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="32" parent="9" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="33" parent="9" rk="1" sh-0="3"/>
  <Value flg="0x400" vid="34" parent="9" rk="1" sh-0="3"/>
  <Ravel vid="0" cells="²SystemVariable.cc:740⁰"/>
  <Ravel vid="1" cells="³-1³0³0³0³0"/>
  <Ravel vid="2" cells="¹0¹1¹2¹3¹4¹5¹6¹7¹8¹9¹A
    ¹B¹C¹D¹E¹F¹10¹11¹12¹13¹14¹15¹16¹17¹18¹19¹1A¹1B¹1C¹1D¹1E¹1F² !⁰¹22²#$⁰
    ²%⁰¹26²'()*+,-./0123456789:;⁰¹3C²=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_⁰
    ²`abcdefghijklmnopqrstuvwxyz{|}~¥€⇄∧∼≬⋆⋸⌸⌺⌼μ⍁¡⍣⍅⎕⍞⌹⍆⍤⍇⍈⍊⊤λ⍍⍏£⊥⍶⌶⍐⍑χ⁰
    ²≢⍖⍗⍘⍚⍛⌈⍜⍢∪⍨⍕⍎⍬⍪∣│┤⍟∆∇→╣║╗╝←⌊┐└┴┬├─┼↑↓╔╚╩╦╠═╬≡⍸⍷∵⌷⍂⌻⊢⊣◊┘┌█▄▌▐▀⍺⍹⊂⊃⍝⍲⁰
    ²⍴⍱⌽⊖○∨⍳⍉∈∩⌿⍀≥≤≠×÷⍙∘⍵⍫⍋⍒¯¨ ⁰"/>
  <Ravel vid="3" cells="³0"/>
  <Ravel vid="4" cells="³-3"/>
  <Ravel vid="5" cells="³0"/>
  <Ravel vid="6" cells="³16807"/>
  <Ravel vid="7" cells="³0"/>
  <Ravel vid="8" cells="³0"/>
  <Ravel vid="9" cells="⁶32⁶33⁶34⁶31"/>
  <Ravel vid="10" cells="³0³0"/>
  <Ravel vid="11" cells="² ⁰"/>
  <Ravel vid="12" cells="⁴1.28⁴-0.85999999999999999⁴-0.5"/>
  <Ravel vid="13" cells="² ⁰"/>
  <Ravel vid="14" cells="³0"/>
  <Ravel vid="15" cells="³0"/>
  <Ravel vid="16" cells="³1"/>
  <Ravel vid="17" cells="¹8¹D¹A
    "/>
  <Ravel vid="18" cells="³0"/>
  <Ravel vid="19" cells="².,⋆0_¯⁰"/>
  <Ravel vid="20" cells="³1"/>
  <Ravel vid="21" cells="⁴1e-13"/>
  <Ravel vid="22" cells="³0"/>
  <Ravel vid="23" cells="³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0
    ³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0
    ³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0³0³0³0³1³0
    ³0³0³0³1³0³0³0³0³1"/>
  <Ravel vid="24" cells="³10"/>
  <Ravel vid="25" cells="³80"/>
  <Ravel vid="26" cells="⁴-1.1000000000000001⁴0.60000000000000009³-1"/>
  <Ravel vid="27" cells="⁴1.28⁴0.85999999999999999⁴-0.5"/>
  <Ravel vid="28" cells="³0³0³2"/>
  <Ravel vid="29" cells="⁴-1.28⁴-0.85999999999999999⁴-0.5"/>
  <Ravel vid="30" cells="³-3⁴-0.5³1"/>
  <Ravel vid="31" cells="⁴1.28⁴-0.85999999999999999⁴-0.5"/>
  <Ravel vid="32" cells="³-3⁴-0.5³1"/>
  <Ravel vid="33" cells="⁴1.28⁴0.85999999999999999⁴-0.5"/>
  <Ravel vid="34" cells="⁴-1.28⁴-0.85999999999999999⁴-0.5"/>
  <SymbolTable size="11">
    <Symbol name="bottomLeft" stack-size="1">
      <Variable vid="29"/>
    </Symbol>

    <Symbol name="bottomRight" stack-size="1">
      <Variable vid="12"/>
    </Symbol>

    <Symbol name="camera" stack-size="1">
      <Variable vid="28"/>
    </Symbol>

    <Symbol name="canvas" stack-size="1">
      <Variable vid="23"/>
    </Symbol>

    <Symbol name="imagePlane" stack-size="1">
      <Variable vid="9"/>
    </Symbol>

    <Symbol name="newSphere" stack-size="1">
      <Variable vid="26"/>
    </Symbol>

    <Symbol name="ray" stack-size="1">
      <Function creation-time="1573416790238875" exec-properties="0,0,0,0">
        <UCS uni="²λ←λ1 ⍵⁰¹A
          ²λ←⍵⁰¹A
          "/>
      </Function>
    </Symbol>

    <Symbol name="sphere" stack-size="1">
      <Function creation-time="1573416790238956" exec-properties="0,0,0,0">
        <UCS uni="²λ←λ1 ⍵⁰¹A
          ²λ←⍵⁰¹A
          "/>
      </Function>
    </Symbol>

    <Symbol name="topLeft" stack-size="1">
      <Variable vid="30"/>
    </Symbol>

    <Symbol name="topRight" stack-size="1">
      <Variable vid="27"/>
    </Symbol>

    <Symbol name="vector3" stack-size="1">
      <Function creation-time="1573416790238306" exec-properties="0,0,0,0">
        <UCS uni="²λ←λ1 ⍵⁰¹A
          ²λ←⍵⁰¹A
          "/>
      </Function>
    </Symbol>

  </SymbolTable>

  <Symbol name="⎕AI" stack-size="1">
    <Variable vid="1"/>
  </Symbol>

  <Symbol name="⎕ARG" stack-size="1">
    <unused-name/>
  </Symbol>

  <Symbol name="⎕AV" stack-size="1">
    <Variable vid="2"/>
  </Symbol>

  <Symbol name="⎕CT" stack-size="1">
    <Variable vid="21"/>
  </Symbol>

  <Symbol name="⎕EM" stack-size="1">
    <unused-name/>
  </Symbol>

  <Symbol name="⎕ET" stack-size="1">
    <unused-name/>
  </Symbol>

  <Symbol name="⎕FC" stack-size="1">
    <Variable vid="19"/>
  </Symbol>

  <Symbol name="⎕IO" stack-size="1">
    <Variable vid="16"/>
  </Symbol>

  <Symbol name="⎕L" stack-size="1">
    <Variable vid="14"/>
  </Symbol>

  <Symbol name="⎕LC" stack-size="1">
    <Variable vid="7"/>
  </Symbol>

  <Symbol name="⎕LX" stack-size="1">
    <Variable vid="13"/>
  </Symbol>

  <Symbol name="⎕PP" stack-size="1">
    <Variable vid="24"/>
  </Symbol>

  <Symbol name="⎕PR" stack-size="1">
    <Variable vid="11"/>
  </Symbol>

  <Symbol name="⎕PS" stack-size="1">
    <Variable vid="10"/>
  </Symbol>

  <Symbol name="⎕PW" stack-size="1">
    <Variable vid="25"/>
  </Symbol>

  <Symbol name="⎕R" stack-size="1">
    <Variable vid="8"/>
  </Symbol>

  <Symbol name="⎕RL" stack-size="1">
    <Variable vid="6"/>
  </Symbol>

  <Symbol name="⎕SVE" stack-size="1">
    <Variable vid="15"/>
  </Symbol>

  <Symbol name="⎕SYL" stack-size="1">
    <Variable vid="5"/>
  </Symbol>

  <Symbol name="⎕TC" stack-size="1">
    <Variable vid="17"/>
  </Symbol>

  <Symbol name="⎕TS" stack-size="1">
    <Variable vid="18"/>
  </Symbol>

  <Symbol name="⎕TZ" stack-size="1">
    <Variable vid="4"/>
  </Symbol>

  <Symbol name="⎕UL" stack-size="1">
    <Variable vid="20"/>
  </Symbol>

  <Symbol name="⎕X" stack-size="1">
    <Variable vid="3"/>
  </Symbol>

  <Symbol name="⎕WA" stack-size="1">
    <Variable vid="22"/>
  </Symbol>

  <Symbol name="λ" stack-size="1">
    <unused-name/>
  </Symbol>

  <Symbol name="⍺" stack-size="1">
    <unused-name/>
  </Symbol>

  <Symbol name="⍵" stack-size="1">
    <unused-name/>
  </Symbol>

  <Symbol name="χ" stack-size="1">
    <unused-name/>
  </Symbol>

  <Symbol name="⍶" stack-size="1">
    <unused-name/>
  </Symbol>

  <Symbol name="⍹" stack-size="1">
    <unused-name/>
  </Symbol>

  <StateIndicator levels="1">
    <SI-entry level="0" pc="0" line="0">
      <Statements>
        <UCS uni="²canvas⁰"/>
      </Statements>
      <Parser size="0" assign-pending="0" action="4" lookahead-high="0">
        <Token pc="-1" tag="0x56020011"/>
      </Parser>
    </SI-entry>

  </StateIndicator>

</Workspace>
    
