import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np

# sales data for 2018 and 2019
sales_2018 = [6226, 1521, 1842, 2051, 1728, 2138, 7479, 4434, 3615, 5472, 7224, 1812]
sales_2019 = [7545, 4456, 6678, 3958]

months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

# plotting the data
plt.plot(months, sales_2018, label='2018')
plt.plot(months[:4], sales_2019[:4], label='2019')

# customising the plot
plt.title('Monthly Sales')
plt.xlabel('Month')
plt.ylabel('Sales (£)')
plt.legend()

# displaying the plot
plt.show()