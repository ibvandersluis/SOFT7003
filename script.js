/*  Name        : script.js
    Author      : Isaac Vander Sluis
    Description : Handles logic for web app */

// Test function for searching through xsl, not implemented
function xslTest(searchterm) {
  console.log(searchterm);
  node = document.createElement("p")
  textnode = document.createTextNode(searchterm);
  node.appendChild(textnode);
  document.getElementById("result").appendChild(node);
}

// Function to load the XML
function loadXMLDoc(filename) {
  if (window.ActiveXObject) {
    xhttp = new ActiveXObject("Msxml2.XMLHTTP");
  } else {
    xhttp = new XMLHttpRequest();
  }
  xhttp.open("GET", filename, false);
  try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
  xhttp.send("");
  return xhttp.responseXML;
}

// Function do display all of the XML/XSL
function displayResult() {
  xml = loadXMLDoc("pots.xml");
  xsl = loadXMLDoc("pots.xsl");
  // code for IE
  if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
    ex = xml.transformNode(xsl);
    document.getElementById("table").innerHTML = ex;
  }
  // code for Chrome, Firefox, Opera, etc.
  else if (document.implementation && document.implementation.createDocument) {
    xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    resultDocument = xsltProcessor.transformToFragment(xml, document);
    document.getElementById("table").appendChild(resultDocument);
  }
}
