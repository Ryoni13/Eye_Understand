<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" initial-scale="1.0" minimum-scale="1.0" maximum-scale="1.0" user-scalable="no">
    <title>testDoc</title>
    <link rel="stylesheet" type="text/css" href="resources/css/style.css"/>
       <script src="http://code.jquery.com/jquery-latest.min.js"></script>
       
   <!-- or from CDN -->
   <script src="https://unpkg.com/hangul-js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="resources/css/style.css"/>
    <link rel="stylesheet" href="https://code.jquery.com/qunit/qunit-2.1.1.css">
    <script src="https://code.jquery.com/qunit/qunit-2.1.1.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.js"
            integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="resources/js/crypto.js"></script>
    <script type='text/javascript' src="resources/js/hangul.js"></script>
    <script type='text/javascript' src='resources/js/jquery.secureKeyboard.js'></script>
    
    
    <style>

        body{
            position: relative;
            width: 100%;
            height: 100%;
            background: aliceblue;
            margin: 0;
        }

        form{
            position: relative;
            height: 5%;
        }

        .Screen{
            position: relative;
            height: 1500px;
            width: 80%;
            margin: 10% auto;
            display: table;
            background: ghostwhite;
            padding: 2%;
        }

    </style>
</head>
<body>
<div class="Screen">

    <div id="qunit"></div>
    <textarea class="tv" rows="8" cols="30" readonly="true"
              placeholder="키보드는 input의 위치를 고려해서 등장합니다. input이 키보드가 등장하는 위치보다 아래에 있을 경우에는 스크롤링 해서 등장시킵니다.
                           encrypted value in form"></textarea>
    <textarea class="tv2" rows="8" cols="30" readonly="true"
              placeholder="decrypted value in form"></textarea>
    <fieldset>
        <form class="input1" action="${path}/keyboard.do" method="post">
            <label for="name">단어만 :</label>
            <input class="nameField searchInput" name="words" type="text" id="name" readonly="readonly"/><br>
            <label for="hangul">풀 자판 :</label>
            <input class="hangulField" type="text" id="hangul" readonly="readonly"/><br>
            <label for="pwd">숫자 입력(비밀번호) :</label>
            <input class="pwdField" type="password" id="pwd" readonly="readonly"/><br>
            <button id="rmvTest" onclick="remove()">remove test result</button>
        </form>
    </fieldset>
</div>

<script>
    $.svk.init();
    QUnit.test('function test', function (assert) {
        var key = $.svk._defaults().options.secureKey;
        var test = $('#name').val('')[0].value;
        assert.deepEqual(test,
            GibberishAES.aesDecrypt(GibberishAES.aesEncrypt(test, key), key),
            'equal original input text with decryption & encryption'
        );
        assert.deepEqual($('.keyboard').length,
            1,
            'when duplicated init call exists, 1 keyboard instance ');
    });

    function remove() {
        $('#qunit').remove();
        $('#rmvTest').remove();
        return;
    }


</script>

</body>
</html>