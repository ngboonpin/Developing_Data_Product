Banting Air Pollutant Index
========================================================
author: Ng Boon Pin
date: 5 Feb 2016

Introduction
========================================================

This slide presentation is produced as part of Coursera course project for Developing Data Products.

### Shiny Application

The shiny apps can be viewed at this page:
https://ngboonpin.shinyapps.io/BantingAirPollutatnt/

### Github Repo

The code for the shiny apps can be downloaded from the github repo at: https://github.com/ngboonpin/Developing_Data_Product/

Shiny Application - Banting Air Pollutant Index
========================================================

The Air Pollution Index (API) is a simple and generalized way to describe the air quality, which is used in Malaysia. It is calculated from several sets of air pollution data.

This application allows viewer to observe the hourly changes of the API reading in Banting, based on the selected Month and Year.

Source of the data is obtained from http://data.gov.my/view.php?view=280

However, the measured API is only available from August 2013 and February 2015.

Location of API Reading Taken
========================================================

<!-- Map generated in R 3.2.3 by googleVis 0.5.10 package -->
<!-- Fri Feb 05 15:11:49 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMapIDe1820bf321d () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "2.832833, 101.499588",
"Banting, Selangor" 
] 
];
data.addColumn('string','loc');
data.addColumn('string','tip');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMapIDe1820bf321d() {
var data = gvisDataMapIDe1820bf321d();
var options = {};
options["showTip"] = true;
options["mapType"] = "normal";
options["enableScrollWheel"] = true;

    var chart = new google.visualization.Map(
    document.getElementById('MapIDe1820bf321d')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "map";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMapIDe1820bf321d);
})();
function displayChartMapIDe1820bf321d() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMapIDe1820bf321d"></script>
 
<!-- divChart -->
  
<div id="MapIDe1820bf321d" 
  style="width: 500; height: automatic;">
</div>



Summary
========================================================

This application demonstrated the features in Shiny application that allows creation of interactive R programs embedded into web page.

The Select Box input is used to receive user action and Plot Output/Data Table Output is used to display the outcome of user selection.

The reactive output is displayed in the graph/data table as a result of server processes.

Based on the outcome of the graph, we can observe that API readings usually peak in the afternoon around 3-4pm.


