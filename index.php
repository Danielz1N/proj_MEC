<?php session_start() ?>  
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>phpflow.com : Simple Example of In-line Editing with HTML5</title>
</head>
<body>
<div class="container" style="padding:50px 250px;">
<h1>Simple Example of Inline Editing with HTML5</h1>
<table id="employee_grid" class="table table-condensed table-hover table-striped bootgrid-table" width="60%" cellspacing="0">
   <thead>
      <tr>
         <th>Name</th>
         <th>Salary</th>
         <th>Age</th>
      </tr>
   </thead>
   <tbody>
      <tr data-row-id="1">
         <td contenteditable="true">Tiger Nixon</td>
         <td contenteditable="true">320800</td>
         <td contenteditable="true">61</td>
      </tr>
      <tr data-row-id="2">
         <td contenteditable="true">Garrett Winters</td>
         <td contenteditable="true">170750</td>
         <td contenteditable="true">63</td>
      </tr>
      <tr data-row-id="3">
         <td contenteditable="true">Ashton Cox</td>
         <td contenteditable="true">86000</td>
         <td contenteditable="true">66</td>
      </tr>
      <tr data-row-id="4">
         <td contenteditable="true">Cedric Kelly</td>
         <td contenteditable="true">433060</td>
         <td contenteditable="true">22</td>
      </tr>
      <tr data-row-id="5">
         <td contenteditable="true">Airi Satou</td>
         <td contenteditable="true">162700</td>
         <td contenteditable="true">33</td>
      </tr>
      <tr data-row-id="6">
         <td contenteditable="true">Brielle Williamson</td>
         <td contenteditable="true">372000</td>
         <td contenteditable="true">61</td>
      </tr>
      <tr data-row-id="7">
         <td contenteditable="true">Herrod Chandler</td>
         <td contenteditable="true">137500</td>
         <td contenteditable="true">59</td>
      </tr>
      <tr data-row-id="8">
         <td contenteditable="true">Rhona Davidson</td>
         <td contenteditable="true">327900</td>
         <td contenteditable="true">55</td>
      </tr>
      <tr data-row-id="9">
         <td contenteditable="true">Colleen Hurst</td>
         <td contenteditable="true">205500</td>
         <td contenteditable="true">39</td>
      </tr>
      <tr data-row-id="10">
         <tdcontenteditable="true">Sonya Frost</td>
         <td contenteditable="true">103600</td>
         <td contenteditable="true">23</td>
      </tr>
   </tbody>
</table>

</div>
</body>
</html>