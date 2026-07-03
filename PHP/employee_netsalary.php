<?php
/*
=====================================================
PRACTICAL: PHP — Multiple Employees (Array) → Net Salary Calculation
=====================================================

AIM:
- To store multiple employees in an array and compute
  Net Salary after PF and Income Tax deductions.

OBJECTIVE:
- Represent each employee as an associative array.
- Compute:
    Gross  = Basic + HRA + DA + Allowances
    PF     = PF% of Basic
    Tax    = slab-based % of Gross
    Deductions = PF + Tax
    Net    = Gross − Deductions
- Display all results in a tabular format.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

TAX SLABS (Example):
- Gross ≤ 25,000      → 0%
- 25,001 – 50,000     → 5%
- 50,001 – 1,00,000   → 10%
- > 1,00,000          → 20%

ALGORITHM:
1) Define an array $employees with fields:
   name, basic, hra, da, allowances, pf_percent.
2) For each employee:
   a) gross = basic + hra + da + allowances
   b) pf = (pf_percent/100) * basic
   c) tax = tax_rate(gross) * gross
   d) deductions = pf + tax
   e) net = gross − deductions
3) Print a table: Name, Basic, HRA, DA, Allow, Gross, PF, Tax, Deductions, Net.
4) End.

STEPS TO RUN:
- Save file as: employees_salary.php
- Open in browser: http://localhost/employees_salary.php

=====================================================
PHP CODE (employees_salary.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employees Net Salary (PHP)</title>
</head>
<body>
  <h1>Multiple Employees → Net Salary Calculation (PHP)</h1>

<?php
// -------------------- TAX SLAB FUNCTION --------------------
function tax_rate($gross){
  if ($gross <= 25000)        return 0.00;  // 0%
  elseif ($gross <= 50000)    return 0.05;  // 5%
  elseif ($gross <= 100000)   return 0.10;  // 10%
  else                        return 0.20;  // 20%
}

// -------------------- EMPLOYEE DATA --------------------
$employees = [
  // name, basic, hra, da, allowances, pf_percent (on basic)
  ['name'=>'Amit',  'basic'=>22000, 'hra'=>8000, 'da'=>6000, 'allowances'=>2500, 'pf_percent'=>12],
  ['name'=>'Priya', 'basic'=>38000, 'hra'=>12000,'da'=>9000, 'allowances'=>4500, 'pf_percent'=>12],
  ['name'=>'Rahul', 'basic'=>52000, 'hra'=>16000,'da'=>12000,'allowances'=>6000, 'pf_percent'=>12],
  ['name'=>'Neha',  'basic'=>90000, 'hra'=>30000,'da'=>22000,'allowances'=>10000,'pf_percent'=>12],
];

// -------------------- TABLE HEADER --------------------
echo "<table border='1' cellpadding='8' cellspacing='0'>";
echo "<tr>
        <th>Name</th>
        <th>Basic (₹)</th>
        <th>HRA (₹)</th>
        <th>DA (₹)</th>
        <th>Allow (₹)</th>
        <th>Gross (₹)</th>
        <th>PF (₹)</th>
        <th>Tax (₹)</th>
        <th>Deductions (₹)</th>
        <th>Net (₹)</th>
      </tr>";

// -------------------- ROWS --------------------
foreach ($employees as $e) {
  $basic = (float)$e['basic'];
  $hra   = (float)$e['hra'];
  $da    = (float)$e['da'];
  $allow = (float)$e['allowances'];
  $pfPct = (float)$e['pf_percent'];

  $gross = $basic + $hra + $da + $allow;
  $pf    = ($pfPct/100.0) * $basic;
  $tax   = tax_rate($gross) * $gross;
  $ded   = $pf + $tax;
  $net   = $gross - $ded;

  echo "<tr>";
  echo "<td>{$e['name']}</td>";
  echo "<td>".number_format($basic,2)."</td>";
  echo "<td>".number_format($hra,2)."</td>";
  echo "<td>".number_format($da,2)."</td>";
  echo "<td>".number_format($allow,2)."</td>";
  echo "<td>".number_format($gross,2)."</td>";
  echo "<td>".number_format($pf,2)."</td>";
  echo "<td>".number_format($tax,2)."</td>";
  echo "<td>".number_format($ded,2)."</td>";
  echo "<td>".number_format($net,2)."</td>";
  echo "</tr>";
}
echo "</table>";
?>

<?php
/*
================= SAMPLE OUTPUT (Conceptual) =================

Name  | Basic  | HRA   | DA    | Allow | Gross  |   PF   |  Tax  | Deductions |   Net
--------------------------------------------------------------------------------------
Amit  | 22000  | 8000  | 6000  | 2500  | 38500  | 2640   | 1925  |   4565     | 33935
Priya | 38000  |12000  | 9000  | 4500  | 63500  | 4560   | 6350  |  10910     | 52590
Rahul | 52000  |16000  |12000  | 6000  | 86000  | 6240   | 8600  |  14840     | 71160
Neha  | 90000  |30000  |22000  |10000  |152000  |10800   |30400  |  41200     |110800

(Note: Values rounded; actual table uses 2 decimals via number_format.)

=================================================
RESULT:
- Successfully calculated PF, Tax, Deductions and Net Salary
  for multiple employees stored in an array.
=================================================
*/
?>
</body>
</html>
