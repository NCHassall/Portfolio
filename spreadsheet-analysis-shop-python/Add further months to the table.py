import csv

# read the data from the spreadsheet
def read_data ():
    data = []

    with open('sales.csv', 'r') as sales_csv:
        spreadsheet = csv.DictReader(sales_csv)
        for row in spreadsheet:
            data.append(row)
    return data

# collect all of the sales from each month into a single list
with open('sales.csv', 'r') as sales_csv:
    contents = sales_csv.read()

print(contents)

# output the total sales across all months - You must be able to calculate the total sales for the year or quarter
def run ():
    data = read_data()
    sales = []
    for row in data:
        sale = int(row['sales'])
        sales.append(sale)
    total = sum(sales)
    print('Total sales: {}'.format(total))

run()


# you should be able to add further months to the table

new_month = input('Enter a new month in the following format year,month,sales,expenditure: ')

with open('sales.csv', 'r') as sales_csv:
   newmonth = sales_csv.read()

newmonth = newmonth + new_month + '\n'

with open('sales.csv', 'w+') as sales_csv:
     sales_csv.write(newmonth)