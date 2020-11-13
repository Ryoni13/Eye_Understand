function VKI_buildKeyboardInputs() {
    var self = this;
  
    this.VKI_version = "1.10";
    this.VKI_target = this.VKI_visible = "";
    this.VKI_shift = this.VKI_capslock = this.VKI_alternate = this.VKI_dead = false;
    this.VKI_deadkeysOn = false;
    this.VKI_kt = "KR";  // Default keyboard layout
    this.VKI_range = false;
    this.VKI_keyCenter = 3;
  
  
    /* ***** Create keyboards **************************************** */
    this.VKI_layout = new Object();
    this.VKI_layoutDDK = new Object();
  
    // - Lay out each keyboard in rows of sub-arrays.  Each sub-array
    //   represents one key.
    //
    // - Each sub-array consists of four slots described as follows:
    //     example: ["a", "A", "\u00e1", "\u00c1"]
    //
    //          a) Normal character
    //          A) Character + Shift or Caps
    //     \u00e1) Character + Alt or AltGr
    //     \u00c1) Character + Shift or Caps + Alt or AltGr
    //
    //   You may include sub-arrays which are fewer than four slots.  In
    //   these cases, the missing slots will be blanked when the
    //   corresponding modifier key (Shift or AltGr) is pressed.
    //
    // - If the second slot of a sub-array matches one of the following
    //   strings:
    //       "Tab", "Caps", "Shift", "Enter", "Bksp", "Alt" OR "AltGr"
    //   then the function of the key will be the following,
    //   respectively:
    //     - Insert a tab
    //     - Toggle Caps Lock (technically a Shift Lock)
    //     - Next entered character will be the shifted character
    //     - Insert a newline (textarea), or close the keyboard
    //     - Delete the previous character
    //     - Next entered character will be the alternate character
    //
    //   The first slot of this sub-array will be the text to display on
    //   the corresponding key.  This allows for easy localisation of key
    //   names.
    //
    // - Layout dead keys (diacritic + letter) should be added as arrays
    //   of two item arrays with hash keys equal to the diacritic.  See
    //   the "this.VKI_deadkey" object below the layout definitions. In
    //   each two item child array, the second item is what the diacritic
    //   would change the first item to.
    //
    // - To disable dead keys for a layout, simply assign true to the
    //   this.VKI_layoutDDK (DDK = disable dead keys) object of the same
    //   name as the layout.  See the Numpad layout below for an example.
    //
    // - Note that any characters beyond the normal ASCII set should be
    //   entered in escaped Unicode format.  (eg \u00a3 = Pound symbol)
    //   You can find Unicode values for characters here:
    //     http://unicode.org/charts/
    //
    // - To remove a keyboard, just delete it, or comment it out of the
    //   source code
  
    this.VKI_layout.KR = [ // Korea Standard Keyboard
      [["`", "~"], ["1", "!"], ["2", "@"], ["3", "#"], ["4", "$"], ["5", "%"], ["6", "^"], ["7", "&"], ["8", "*"], ["9", "("], ["0", ")"], ["-", "_"], ["=", "+"], ["Bksp", "Bksp"]],
      [["Tab", "Tab"], ["ㅂ", "ㅃ"], ["ㅈ", "ㅉ"], ["ㄷ", "ㄸ"], ["ㄱ", "ㄲ"], ["ㅅ", "ㅆ"], ["ㅛ", "ㅛ"], ["ㅕ", "ㅕ"], ["ㅑ", "ㅑ"], ["ㅐ", "ㅒ"], ["ㅔ", "ㅖ"], ["[", "{"], ["]", "}"], ["\\", "|"]],
      [["Caps", "Caps"], ["ㅁ", "ㅁ"], ["ㄴ", "ㄴ"], ["ㅇ", "ㅇ"], ["ㄹ", "ㄹ"], ["ㅎ", "ㅎ"], ["ㅗ", "ㅗ"], ["ㅓ", "ㅓ"], ["ㅏ", "ㅏ"], ["ㅣ", "ㅣ"], [";", ":"], ["'", '"'], ["Enter", "Enter"]],
      [["Shift", "Shift"], ["ㅋ", "ㅋ"], ["ㅌ", "ㅌ"], ["ㅊ", "ㅊ"], ["ㅍ", "ㅍ"], ["ㅠ", "ㅠ"], ["ㅜ", "ㅜ"], ["ㅡ", "ㅡ"], [",", "＜"], [".", ">"], ["/", "?"], ["Shift", "Shift"]],
      [[" ", " "]]
    ];
  
    this.VKI_layout.US = [ // US Standard Keyboard
      [["`", "~"], ["1", "!"], ["2", "@"], ["3", "#"], ["4", "$"], ["5", "%"], ["6", "^"], ["7", "&"], ["8", "*"], ["9", "("], ["0", ")"], ["-", "_"], ["=", "+"], ["Bksp", "Bksp"]],
      [["Tab", "Tab"], ["q", "Q"], ["w", "W"], ["e", "E"], ["r", "R"], ["t", "T"], ["y", "Y"], ["u", "U"], ["i", "I"], ["o", "O"], ["p", "P"], ["[", "{"], ["]", "}"], ["\\", "|"]],
      [["Caps", "Caps"], ["a", "A"], ["s", "S"], ["d", "D"], ["f", "F"], ["g", "G"], ["h", "H"], ["j", "J"], ["k", "K"], ["l", "L"], [";", ":"], ["'", '"'], ["Enter", "Enter"]],
      [["Shift", "Shift"], ["z", "Z"], ["x", "X"], ["c", "C"], ["v", "V"], ["b", "B"], ["n", "N"], ["m", "M"], [",", "＜"], [".", ">"], ["/", "?"], ["Shift", "Shift"]],
      [[" ", " "]]
    ];
  
    var kr=Array('ㅂ','ㅃ','ㅈ','ㅉ','ㄷ','ㄸ','ㄱ','ㄲ','ㅅ','ㅆ','ㅛ','ㅛ','ㅕ','ㅕ','ㅑ','ㅑ','ㅐ','ㅒ','ㅔ','ㅖ','ㅁ','ㅁ','ㄴ','ㄴ','ㅇ','ㅇ','ㄹ','ㄹ','ㅎ','ㅎ','ㅗ','ㅗ','ㅓ','ㅓ','ㅏ','ㅏ','ㅣ','ㅣ','ㅋ','ㅋ','ㅌ','ㅌ','ㅊ','ㅊ','ㅍ','ㅍ','ㅠ','ㅠ','ㅜ','ㅜ','ㅡ','ㅡ')
    var us=Array('q','Q','w','W','e','E','r','R','t','T','y','Y','u','U','i','I','o','O','p','P','a','A','s','S','d','D','f','F','g','G','h','H','j','J','k','K','l','L','z','Z','x','X','c','C','v','V','b','B','n','N','m','M')
  
    /* ***** Find tagged input & textarea elements ******************* */
    var inputElems = [
      document.getElementsByTagName('input'),
      document.getElementsByTagName('textarea'),
    ]
    var ele =document.getElementById('test'); 
    ele.click();
    for (var x = 0, inputCount = 0, elem; elem = inputElems[x++];) {
      if (elem) {
        for (var y = 0, keyid = "", ex; ex = elem[y++];) {
          if ((ex.nodeName == "TEXTAREA" || ex.type == "text" || ex.type == "password") && ex.className.indexOf("keyboardInput") > -1) {
            if (!ex.id) {
              do { keyid = 'keyboardInputInitiator' + inputCount++; } while (document.getElementById(keyid));
              ex.id = keyid;
            } else keyid = ex.id;
            var keybut = document.createElement('img');
                keybut.src = "http://www.blueb.co.kr/SRC/javascript/image8/keyboard.png";
                keybut.alt = "Keyboard interface";
                keybut.className = "keyboardInputInitiator";
                keybut.title = "Display graphical keyboard interface";
                keybut.onclick = (function(a) { return function() { self.VKI_show(a); }; })(keyid);
            ex.parentNode.insertBefore(keybut, ex.nextSibling);
            if (!window.sidebar && !window.opera) {
              ex.onclick = ex.onkeyup = ex.onselect = function() {
                if (self.VKI_target.createTextRange) self.VKI_range = document.selection.createRange();
              };
            }
          }
        }
      }
    }
  
  
    /* ***** Build the keyboard interface **************************** */
    this.VKI_keyboard = document.createElement('table');
    this.VKI_keyboard.id = "keyboardInputMaster";
    this.VKI_keyboard.cellSpacing = this.VKI_keyboard.cellPadding = this.VKI_keyboard.border = "0";
  
    var layouts = 0;
    for (ktype in this.VKI_layout) if (typeof this.VKI_layout[ktype] == "object") layouts++;
  
    var thead = document.createElement('thead');
      var tr = document.createElement('tr');
        var th = document.createElement('th');
          if (layouts > 1) {
            var kblist = document.createElement('select');
              for (ktype in this.VKI_layout) {
                if (typeof this.VKI_layout[ktype] == "object") {
                  var opt = document.createElement('option');
                      opt.value = ktype;
                      opt.appendChild(document.createTextNode(ktype));
                    kblist.appendChild(opt);
                }
              }
                kblist.value = this.VKI_kt;
                kblist.onchange = function() {
                  self.VKI_kt = this.value;
                  self.VKI_buildKeys();
                  self.VKI_position();
                };
            th.appendChild(kblist);
          }
          tr.appendChild(th);
  
        var td = document.createElement('td');
          var clearer = document.createElement('span');
              clearer.id = "keyboardInputClear";
              clearer.appendChild(document.createTextNode("Clear"));
              clearer.title = "Clear this input";
              clearer.on_mousedown = function() { this.className = "pressed"; };
              clearer.on_mouseup = function() { this.className = ""; };
              clearer.onclick = function() {
                self.VKI_target.value = "";
                document.getElementById('eng_text').value=''
                self.VKI_target.focus();
                return false;
              };
            td.appendChild(clearer);
  
          var closer = document.createElement('span');
              closer.id = "keyboardInputClose";
              closer.appendChild(document.createTextNode('X'));
              closer.title = "Close this window";
              closer.on_mousedown = function() { this.className = "pressed"; };
              closer.on_mouseup = function() { this.className = ""; };
              closer.onclick = function() { self.VKI_close(); };
            td.appendChild(closer);
  
          tr.appendChild(td);
        thead.appendChild(tr);
    this.VKI_keyboard.appendChild(thead);
  
    var tbody = document.createElement('tbody');
      var tr = document.createElement('tr');
        var td = document.createElement('td');
            td.colSpan = "2";
          var div = document.createElement('div');
              div.id = "keyboardInputLayout";
            td.appendChild(div);
          var div = document.createElement('div');
            var ver = document.createElement('var');
                ver.appendChild(document.createTextNode("v" + this.VKI_version));
              div.appendChild(ver);
            td.appendChild(div);
          tr.appendChild(td);
        tbody.appendChild(tr);
    this.VKI_keyboard.appendChild(tbody);
  
  
  
    /* ***** Functions ************************************************ */
    /* ******************************************************************
     * Build or rebuild the keyboard keys
     *
     */
  
    this.VKI_buildKeys = function() {
      this.VKI_shift = this.VKI_capslock = this.VKI_alternate = this.VKI_dead = false;
  
      var container = this.VKI_keyboard.tBodies[0].getElementsByTagName('div')[0];
      while (container.firstChild) container.removeChild(container.firstChild);
  
      for (var x = 0, hasDeadKey = false, lyt; lyt = this.VKI_layout[this.VKI_kt][x++];) {
        var table = document.createElement('table');
            table.cellSpacing = table.cellPadding = table.border = "0";
        if (lyt.length <= this.VKI_keyCenter) table.className = "keyboardInputCenter";
          var tbody = document.createElement('tbody');
            var tr = document.createElement('tr');
            for (var y = 0, lkey; lkey = lyt[y++];) {
              var td = document.createElement('td');
                  td.appendChild(document.createTextNode(lkey[0]));
  
                var alive = false;
                if (this.VKI_deadkeysOn) for (key in this.VKI_deadkey) if (key === lkey[0]) alive = true;
                  td.className = (alive) ? "alive" : "";
                if (lyt.length > this.VKI_keyCenter && y == lyt.length)
                  td.className += " last";
  
                if (lkey[0] == " ")
                  td.style.paddingLeft = td.style.paddingRight = "220px";
                  td.on_mouseover = function() { if (this.className != "dead" && this.firstChild.nodeValue != "\xa0") this.className += " hover"; };
                  td.on_mouseout = function() { if (this.className != "dead") this.className = this.className.replace(/ ?(hover|pressed)/g, ""); };
                  td.on_mousedown = function() { if (this.className != "dead" && this.firstChild.nodeValue != "\xa0") this.className += " pressed"; };
                  td.on_mouseup = function() { if (this.className != "dead") this.className = this.className.replace(/ ?pressed/g, ""); };
                  td.ondblclick = function() { return false; };
  
                switch (lkey[1]) {
                  case "Caps":
                  case "Shift":
                  case "Alt":
                  case "AltGr":
                    td.onclick = (function(type) { return function() { self.VKI_modify(type); return false; }})(lkey[1]);
                    break;
                  case "Tab":
                    td.onclick = function() { self.VKI_insert("\t"); return false; };
                    break;
                  case "Bksp":
                    td.onclick = function() {
                      self.VKI_target.focus();
                      if (self.VKI_target.setSelectionRange) {
                        var srt = self.VKI_target.selectionStart;
                        var len = self.VKI_target.selectionEnd;
                        if (srt < len) srt++;
                        self.VKI_target.value = self.VKI_target.value.substr(0, srt - 1) + self.VKI_target.value.substr(len);
                        self.VKI_target.setSelectionRange(srt - 1, srt - 1);
                      } else if (self.VKI_target.createTextRange) {
                        try { self.VKI_range.select(); } catch(e) {}
                        self.VKI_range = document.selection.createRange();
                        if (!self.VKI_range.text.length) self.VKI_range.moveStart('character', -1);
                        self.VKI_range.text = "";
                      } else self.VKI_target.value = self.VKI_target.value.substr(0, self.VKI_target.value.length - 1);
                      if (self.VKI_shift) self.VKI_modify("Shift");
                      if (self.VKI_alternate) self.VKI_modify("AltGr");
  
                      if(self.VKI_kt=='KR'){
                        var eng_span=document.getElementById('eng_text')
                        eng_span.value=eng_span.value.substring(0,eng_span.value.length-1)
  
                        englishToKorean(self.VKI_target,eng_span)
                      }
                      return true;
                    };
                    break;
                  case "Enter":
                    td.onclick = function() {
                      // if (self.VKI_target.nodeName == "TEXTAREA") { self.VKI_insert("\n"); } else self.VKI_close();
                      // return true;
                    };
                    break;
                  default:
                    td.onclick = function() {
                      if (self.VKI_deadkeysOn && self.VKI_dead) {
                        if (self.VKI_dead != this.firstChild.nodeValue) {
                          for (key in self.VKI_deadkey) {
                            if (key == self.VKI_dead) {
                              if (this.firstChild.nodeValue != " ") {
                                for (var z = 0, rezzed = false, dk; dk = self.VKI_deadkey[key][z++];) {
                                  if (dk[0] == this.firstChild.nodeValue) {
                                    self.VKI_insert(dk[1]);
                                    rezzed = true;
                                    break;
                                  }
                                }
                              } else {
                                self.VKI_insert(self.VKI_dead);
                                rezzed = true;
                              }
                              break;
                            }
                          }
                        } else rezzed = true;
                      }
                      self.VKI_dead = false;
  
                      if (!rezzed && this.firstChild.nodeValue != "\xa0") {
                        if (self.VKI_deadkeysOn) {
                          for (key in self.VKI_deadkey) {
                            if (key == this.firstChild.nodeValue) {
                              self.VKI_dead = key;
                              this.className = "dead";
                              if (self.VKI_shift) self.VKI_modify("Shift");
                              if (self.VKI_alternate) self.VKI_modify("AltGr");
                              break;
                            }
                          }
                          if (!self.VKI_dead) self.VKI_insert(this.firstChild.nodeValue);
                        } else self.VKI_insert(this.firstChild.nodeValue);
                      }
  
                      self.VKI_modify("");
                      return false;
                    };
  
                }
                tr.appendChild(td);
              tbody.appendChild(tr);
            table.appendChild(tbody);
  
            for (var z = lkey.length; z < 4; z++) lkey[z] = "\xa0";
        }
        container.appendChild(table);
      }
    };
  
    this.VKI_buildKeys();
    VKI_disableSelection(this.VKI_keyboard);
  
  
    /* ******************************************************************
     * Controls modifier keys
     *
     */
    this.VKI_modify = function(type) {
      switch (type) {
        case "Alt":
        case "AltGr": this.VKI_alternate = !this.VKI_alternate; break;
        case "Caps": this.VKI_capslock = !this.VKI_capslock; break;
        case "Shift": this.VKI_shift = !this.VKI_shift; break;
      }
      var vchar = 0;
      if (!this.VKI_shift != !this.VKI_capslock) vchar += 1;
  
      var tables = this.VKI_keyboard.getElementsByTagName('table');
      for (var x = 0; x < tables.length; x++) {
        var tds = tables[x].getElementsByTagName('td');
        for (var y = 0; y < tds.length; y++) {
          var lkey = this.VKI_layout[this.VKI_kt][x][y];
  
          switch (lkey[1]) {
            case "Alt":
            case "AltGr":
              if (this.VKI_alternate) dead = true;
              break;
            case "Shift":
              if (this.VKI_shift) dead = true;
              break;
            case "Caps":
              if (this.VKI_capslock) dead = true;
              break;
            case "Tab": case "Enter": case "Bksp": break;
            default:
              if (type) tds[y].firstChild.nodeValue = lkey[vchar + ((this.VKI_alternate && lkey.length == 4) ? 2 : 0)];
              if (this.VKI_deadkeysOn) {
                var char = tds[y].firstChild.nodeValue;
                if (this.VKI_dead) {
                  if (char == this.VKI_dead) dead = true;
                  for (var z = 0; z < this.VKI_deadkey[this.VKI_dead].length; z++)
                    if (char == this.VKI_deadkey[this.VKI_dead][z][0]) { target = true; break; }
                }
                for (key in this.VKI_deadkey) if (key === char) { alive = true; break; }
              }
          }
  
          if (y == tds.length - 1 && tds.length > this.VKI_keyCenter) tds[y].className += " last";
        }
      }
      this.VKI_target.focus();
    };
  
  
    /* ******************************************************************
     * Insert text at the cursor
     *
     */
  
    //자판 입력 부분
    this.VKI_insert = function(text) {
      this.VKI_target.focus();
      if (this.VKI_target.setSelectionRange) {
        var srt = this.VKI_target.selectionStart;
        var len = this.VKI_target.selectionEnd;
        this.VKI_target.value = this.VKI_target.value.substr(0, srt) + text + this.VKI_target.value.substr(len);
        if (text == "\n" && window.opera) srt++;
        this.VKI_target.setSelectionRange(srt + text.length, srt + text.length);
      } else if (this.VKI_target.createTextRange) {
        try { this.VKI_range.select(); } catch(e) {}
        this.VKI_range = document.selection.createRange();
        this.VKI_range.text = text;
        this.VKI_range.collapse(true);
        this.VKI_range.select();
      } else this.VKI_target.value += text;
      if (this.VKI_shift) this.VKI_modify("Shift");
      if (this.VKI_alternate) this.VKI_modify("AltGr");
      this.VKI_target.focus();
  
  
      if(this.VKI_kt=='KR'){
        for(i=0;i<kr.length;i++){
          if(text==kr[i]){
            text=us[i]
            break;
          }
        }
        var eng_span=document.getElementById('eng_text')
        eng_span.value+=text
  
        englishToKorean(this.VKI_target,eng_span)
      }
    };
  
  
    /* ******************************************************************
     * Show the keyboard interface
     *
     */
    this.VKI_show = function(id) {
      if (this.VKI_target = document.getElementById(id)) {
        if (this.VKI_visible != id) {
          this.VKI_range = "";
          try { this.VKI_keyboard.parentNode.removeChild(this.VKI_keyboard); } catch (e) {}
  
          var elem = this.VKI_target;
          this.VKI_target.keyboardPosition = "absolute";
          do {
            if (VKI_getStyle(elem, "position") == "fixed") {
              this.VKI_target.keyboardPosition = "fixed";
              break;
            }
          } while (elem = elem.offsetParent);
          //this.VKI_keyboard.style.top
          //this.VKI_keyboard.style.bottom
          this.VKI_keyboard.style.right = this.VKI_keyboard.style.left = this.VKI_keyboard.style.bottom= "0";
          this.VKI_keyboard.style.width = "100%"
          this.VKI_keyboard.style.padding = "5px 0"
          //this.VKI_keyboard.style.user-select = "none"
          //this.VKI_keyboard.style.transition = "bottom 0.4s" // 아래에서 올라오는거 하려면 focus 사용해야함
          this.VKI_keyboard.style.position = this.VKI_target.keyboardPosition = "fixed";
          document.body.appendChild(this.VKI_keyboard);
  
          this.VKI_visible = this.VKI_target.id;
          this.VKI_position();
          this.VKI_target.focus();
        } else this.VKI_close();
      }
    };
  
  
    /* ******************************************************************
     * Position the keyboard
     *
     */
    this.VKI_position = function() {
      // if (self.VKI_visible != "") {
      //   var inputElemPos = VKI_findPos(self.VKI_target);
      //   self.VKI_keyboard.style.top = inputElemPos[1] - ((self.VKI_target.keyboardPosition == "fixed") ? document.body.scrollTop : 0) + self.VKI_target.offsetHeight + 3 + "px";
      //   self.VKI_keyboard.style.left = Math.min(VKI_innerDimensions()[0] - self.VKI_keyboard.offsetWidth - 15, inputElemPos[0]) + "px";
      // }
    };
  
  
    if (window.addEventListener) {
      window.addEventListener('resize', this.VKI_position, false);
    } else if (window.attachEvent)
      window.attachEvent('onresize', this.VKI_position);
  
  
    /* ******************************************************************
     * Close the keyboard interface
     *
     */
    this.VKI_close = function() {
      try { this.VKI_keyboard.parentNode.removeChild(this.VKI_keyboard); } catch (e) {}
      this.VKI_visible = "";
      this.VKI_target.focus();
      this.VKI_target = "";
    };
  }
  
  
  /* ***** Attach this script to the onload event ******************** */
  if (window.addEventListener) {
    window.addEventListener('load', VKI_buildKeyboardInputs, false);
  } else if (window.attachEvent)
    window.attachEvent('onload', VKI_buildKeyboardInputs);
  
  
  function VKI_findPos(obj) {
    var curleft = curtop = 0;
    do {
      curleft += obj.offsetLeft;
      curtop += obj.offsetTop;
    } while (obj = obj.offsetParent);
    return [curleft, curtop];
  }
  
  function VKI_innerDimensions() {
    if (self.innerHeight) {
      return [self.innerWidth, self.innerHeight];
    } else if (document.documentElement && document.documentElement.clientHeight) {
      return [document.documentElement.clientWidth, document.documentElement.clientHeight];
    } else if (document.body)
      return [document.body.clientWidth, document.body.clientHeight];
    return [0, 0];
  }
  
  function VKI_getStyle(obj, styleProp) {
    if (obj.currentStyle) {
      var y = obj.currentStyle[styleProp];
    } else if (window.getComputedStyle)
      var y = window.getComputedStyle(obj, null)[styleProp];
    return y;
  }
  
  function VKI_disableSelection(elem) {
    elem.onselectstart = function() { return false; };
    elem.unselectable = "on";
    elem.style.MozUserSelect = "none";
    elem.style.cursor = "default";
    if (window.opera) elem.on_mousedown = function() { return false; };
  }
  
  function englishToKorean(obj1,obj2)
  {
          // 입력한 영문 텍스트 추출
          var text = obj1.value;
          var eng_text=obj2.value;
  
          // 변수 초기화
          var initialCode = -1;
          var medialCode  = -1;
          var finalCode   = 0;
          var temp=''
          obj1.value = "";
  
          // 입력한 문자열 길이 추출
          var textLength = eng_text.length;
  
          for( var idx = 0; idx < textLength; idx++ )
          {
                  initialCode=-1
                  medialCode=-1
                  finalCode=0
                  result=''
  
                  // 초성 코드 추출
                  initialCode = getCode( 'initial', eng_text.substring( idx, idx + 1 ) );
                  if(initialCode<0){
                    medialCode = getCode( 'medial', eng_text.substring( idx, idx + 1 ) );
                    if(medialCode<0){ //초성, 중성 다 아니면
                      result=eng_text.substring(idx,idx+1)
                      obj1.value+=result
                      continue
                    }
                  }
                  else{
                    if(getCode('initial',eng_text.substring(idx+1,idx+2))>=0){
                      if(getCode('final',eng_text.substring(idx,idx+2))>0&&idx+2<=textLength){  //종성이면
                        finalCode=getCode('final',eng_text.substring(idx,idx+2))
                        result=String.fromCharCode(12593+finalCode-(finalCode<7?1:0))
                        obj1.value+=result
                        idx++
                      }
                      else{
                        initialCode=initialCode/21/28
                        result=String.fromCharCode(12593+initialCode+(initialCode<2?0:initialCode<3?1:initialCode<6?3:initialCode<9?10:11))
                        obj1.value+=result
                      }
                      continue
                    }
                  }
                  if(medialCode<0){ //첫 문자가 중성이 아니면
                    idx++; // 다음 문자로.
                  }
  
                  /**
                    * 현재 문자와 다음 문자를 합한 문자열의 중성 코드 추출
                    * ㅞ ( np ) 또는 ㄼ ( fq ) 같은 두개의 문자가 들어가는 것을 체크하기 위함
                    */
                  if(idx+2<=textLength){
                    tempMedialCode = getCode( 'medial', eng_text.substring( idx, idx + 2 ) );
                  }
                  else{
                    tempMedialCode=-1
                  }
  
                  // 코드 값이 있을 경우
                  if( tempMedialCode != -1 )
                  {
                          // 코드 값을 저장하고 인덱스가 다다음 문자열을 가르키게 한다.
                          medialCode = tempMedialCode;
                          idx += 2;
                  }
                  else // 코드값이 없을 경우 하나의 문자에 대한 중성 코드 추출
                  {
                          medialCode = getCode( 'medial', eng_text.substring( idx, idx + 1 ) );
                          idx++;
                  }
  
                  // 현재 문자와 다음 문자를 합한 문자열의 종성 코드 추출
                  if(idx+2<=textLength){
                    tempFinalCode = getCode( 'final', eng_text.substring( idx, idx + 2 ) );
                  }
                  else{
                    tempFinalCode=-1
                  }
  
                  // 코드 값이 있을 경우
                  if( tempFinalCode != -1 )
                  {
                          // 코드 값을 저장한다.
                          finalCode = tempFinalCode;
  
                          // 그 다음의 중성 문자에 대한 코드를 추출한다.
                          tempMedialCode = getCode( 'medial', eng_text.substring( idx + 2, idx + 3 ) );
  
                          // 코드 값이 있을 경우
                          if( tempMedialCode != -1 )
                          {
                                  // 종성 코드 값을 저장한다.
                                  finalCode = getCode( 'final', eng_text.substring( idx, idx + 1 ) );
                          }
                          else
                          {
                                  idx++;
                          }
                  }
                  else // 코드 값이 없을 경우
                  {
                          // 그 다음의 중성 문자에 대한 코드 추출
                          tempMedialCode = getCode( 'medial', eng_text.substring( idx + 1, idx + 2 ) );
  
                          // 그 다음에 중성 문자가 존재할 경우
                          if( tempMedialCode != -1 )
                          {
                                  // 종성 문자는 없음.
                                  finalCode = 0;
                                  idx--;
                          }
                          else
                          {
                                  // 종성 문자 추출
                                  finalCode = getCode( 'final', eng_text.substring( idx, idx + 1 ) );
  
                                  if(finalCode<0){  //종성이 아니고
                                    var tmep_initialCode = getCode( 'initial', eng_text.substring( idx, idx + 1 ) );
                                    if(tmep_initialCode<0){ //초성도 아니면
                                      temp=eng_text.substring(idx,idx+1)
                                    }
                                    else{
                                      idx--
                                    }
                                    finalCode=0
                                  }
                          }
                  }
  
                  // 추출한 초성 문자 코드, 중성 문자 코드, 종성 문자 코드를 합한 후 변환하여 출력
                  //alert(!initialCode+'/'+medialCode+'/'+finalCode)
                  if(initialCode<0){
                    if(medialCode>=0){
                      result=String.fromCharCode(12623+medialCode/28)
                    }
                  }
                  else{
                    if(medialCode<0){
                      initialCode=initialCode/21/28
                      result=String.fromCharCode(12593+initialCode+(initialCode<2?0:initialCode<3?1:initialCode<6?3:initialCode<9?10:11))
                    }
                    else{
                      result = String.fromCharCode( 44032 + initialCode + medialCode + finalCode );
                    }
                  }
  
                  obj1.value += (result+temp);
                  temp=''
          }
  }
  
  
  /**
    * 해당 문자에 따른 코드를 추출한다.
    * @param type 초성 : chosung, 중성 : jungsung, 종성 : jongsung 구분
    * @param char 해당 문자
    */
  function getCode( type, char )
  {
          // 초성
          var initial = "rRseEfaqQtTdwWczxvg";
  
          // 중성
          var medial = new Array( 'k', 'o', 'i', 'O', 'j', 'p', 'u', 'P', 'h', 'hk', 'ho', 'hl', 'y', 'n', 'nj', 'np', 'nl', 'b', 'm', 'ml', 'l' );
  
          // 종성
          var final = new Array( 'r', 'R', 'rt', 's', 'sw', 'sg', 'e', 'f', 'fr', 'fa', 'fq', 'ft', 'fx', 'fv', 'fg', 'a', 'q', 'qt', 't', 'T', 'd', 'w', 'c', 'z', 'x', 'v', 'g' );
  
          var returnCode; // 리턴 코드 저장 변수
  
          var isFind = false; // 문자를 찾았는지 체크 변수
  
          if( type == 'initial' )
          {
                  returnCode = initial.indexOf( char ) * 21 * 28;
                  isFind = true;
          }
          else if( type == 'medial' )
          {
                  for( var i = 0; i < medial.length; i++ )
                  {
                          if( medial[i] == char )
                          {
                                  returnCode = i * 28;
                                  isFind = true;
                                  break;
                          }
                  }
          }
          else if( type == 'final' )
          {
                  for( var i = 0; i < final.length; i++ )
                  {
                          if( final[i] == char )
                          {
                                  returnCode = i + 1;
                                  isFind = true;
                                  break;
                          }
                  }
          }
          else
          {
                  alert(!"잘못된 타입입니다.");
          }
  
          if( isFind == false ) returnCode = -1; // 값을 찾지 못했을 경우 -1 리턴
  
          return returnCode;
  }