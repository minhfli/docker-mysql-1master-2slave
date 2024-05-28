import mysql.connector
from time import time


mydb_master = mysql.connector.connect(
  host="127.0.0.1",
  port="4406",
  user="reader",
  password="111",
  database="mydb",
)
mydb_slave1 = mysql.connector.connect(
  host="127.0.0.1",
  port="5501",
  user="root",
  password="111",
  database="mydb",
)

cursor_master = mydb_master.cursor()
cursor_slave1 = mydb_slave1.cursor()


def execute_query(query,cursor,repeats=1):
    tic=time()*1000
    for i in range(repeats):
        cursor.execute(query)
        result = cursor.fetchall()
    toc=time()*1000
    return toc-tic

query="""SELECT 
    Suppliers.sup_name AS Supplier_Name,
    SUM(Order_details.quantity) AS Total_Quantity_Ordered
FROM 
    Order_details
JOIN 
    Products ON Order_details.prod_id = Products.prod_id
JOIN 
    Suppliers ON Products.sup_id = Suppliers.sup_id
GROUP BY 
    Suppliers.sup_name;"""

print(query)

print("run once")
execute_time =  execute_query(query,cursor_master)
print("master execution time: ", execute_time)
execute_time =  execute_query(query,cursor_slave1)
print("slave  execution time: ", execute_time)

print("repeat 20 times")
execute_time =  execute_query(query,cursor_master,20)
print("master execution time: ", execute_time)
execute_time =  execute_query(query,cursor_slave1,20)
print("slave  execution time: ", execute_time)
