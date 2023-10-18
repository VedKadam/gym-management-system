<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Generate Bill</title>
<style>
#generate-bill-btn {
  padding: 10px 20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

#generate-bill-btn:hover {
  background-color: #3e8e41;
}

#bill {
  display: none;
  padding: 20px;
  margin-top: 10px;
  background-color: #f2f2f2;
  border-radius: 5px;
  font-weight: bold;
  font-size: 24px;
}
</style>
</head>
<body>
    <h1>Generate Bill</h1>
    <button id="generate-bill-btn">Generate Bill</button>
    <div id="bill"></div>
    
    <script>
    var generateBillBtn = document.getElementById('generate-bill-btn');
    var bill = document.getElementById('bill');

    generateBillBtn.addEventListener('click', function() {
      var memberType = prompt('Enter member type (elite or premium):');
      if (memberType === 'elite') {
        bill.innerText = 'Bill Amount: Rs 10,000';
      } else if (memberType === 'premium') {
        bill.innerText = 'Bill Amount: Rs 14,000';
      } else {
        alert('Invalid member type!');
        return;
      }
      bill.style.display = 'block';
    });
    </script>
</body>
</html>
