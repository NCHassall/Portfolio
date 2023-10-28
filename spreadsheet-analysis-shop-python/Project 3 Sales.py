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



# you could compare months to each other to track year on year growth

# create a dictionary to store the sales data
sales_data = {}

# open the sales CSV file and read the data
with open('sales.csv', 'r') as sales_csv:
    spreadsheet = csv.DictReader(sales_csv)

    for row in spreadsheet:
        year = row['year']
        month = row['month']

#add the sales and expenditure to the dictionary if it hasn't been added already via the code in 'add further months to the table'
        if(year,month) not in sales_data:
            sales_data[(year,month)] = {}

#add the sales data to the dictionary
        sales_data[(year,month)]['sales'] = float(row['sales'])
        sales_data[(year,month)]['expenditure'] = float(row['expenditure'])

#get the sales data for 2018 and 2019
jan_2018_sales = sales_data[('2018', 'jan')]['sales']
jan_2019_sales = sales_data[('2019', 'jan')]['sales']

sales_difference = jan_2019_sales - jan_2018_sales

print(f"Sales in January 2019 were {sales_difference:.2f} higher than January 2018.")

if sales_difference > 0:
    print("Well done, you have beaten last year's sales!")
elif sales_difference < 0:
    print("Unfortunately, this month you didn't beat last year's sales")
else:
    print("Sales in January 2019 were the same as January 2018.")




#monthly_comparisons = {}

#for year,month in sales_data:
#    sales = sales_data[(year,month)]['sales']

#    if month not in monthly_comparisons:
#        monthly_comparisons[month] = []

#    monthly_comparisons[month].append(sales)

#for month in monthly_comparisons:
#    sales_list = monthly_comparisons[month]

#    avg_sales = sum(sales_list) / len(sales_list)

#    print(f"{month}: average sales = {avg_sales}")

print(sales_data)

# get the user's chosen month
chosen_month = input("Enter a month to compare (e.g. jan): ")


# get the sales data for the chosen month in 2018 and 2019
sales_2018 = sales_data[('2018', chosen_month)]['sales']
sales_2019 = sales_data[('2019', chosen_month)]['sales']

# calculate the difference between the sales figures
sales_difference = sales_2019 - sales_2018

# print out the results
if sales_difference > 0:
    print(f"Sales in {chosen_month} 2019 were {sales_difference:.2f} higher than {chosen_month} 2018. Well done, you've beaten last year's sales!")
elif sales_difference < 0:
    print(f"Sales in {chosen_month} 2019 were {sales_difference:.2f} lower than {chosen_month} 2018. Unfortunately, this month you didn't beat last year's sales")
else:
    print(f"Sales in {chosen_month} 2019 were the same as {chosen_month} 2018.")

