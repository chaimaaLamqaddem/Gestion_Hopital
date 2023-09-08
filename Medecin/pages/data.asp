<%

Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
req = "tous_LesPatients_Par_Unite'"  & 1 & "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3

req2 = "tous_LesPatients_Par_Unite_SalleAttente'"  & 1 & "'"
Set rs2 = Server.CreateObject("ADODB.RecordSet")
rs2.Open req2, cx, 3,3

If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/f2bd761db0.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
    <title>data</title>

    <style>
        .t{
       
            border-spacing:80px   10px ;
            margin: auto;
           
            margin-left: 100px;
            
            
        }

        th , td{
            border: 1px solid rgba(255,99,132,1) ;
            padding: 10px;
            width: 150px;
          text-align: center;
          

        }
        th{
            background-color: indianred;
            font: optional;
            color: beige;
            border-radius: 15px;
        }


    </style>
</head>
<body>

    <div class="infos">
        <table class="t">
        
           <tr>
                <th> <i class="fa-sharp fa-solid fa-user"></i></i>&nbsp; Patients</th>
                <th><i class="fa-solid fa-comment-medical"></i>&nbsp;  Salle d'attente</th>
                <th> <i class="fa-sharp fa-solid fa-link"></i></i>&nbsp; RDV</th>
          </tr>
        <tbody>
            <tr>
                <td><%= rs.RecordCount %></td>
                <td><%= rs2.RecordCount %></td>
                <td><%= rs.RecordCount+rs2.RecordCount %></td>
            </tr>
        </tbody>
        </table>
    </div>
    <canvas id="myChart" width="200" height="100" backgroundColor="blue"></canvas>

    <script>


    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
                label: 'Nombre de patiens',
                data: [12, 19, 3, 5, 2, 3, 20],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    });
    </script>
    
</body>
</html>