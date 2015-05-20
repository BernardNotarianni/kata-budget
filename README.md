## kata-budget

The objectives is to create a personal budget management apps for your finance.

### Step 1: Total of expenses

The program will process data coming from your bank account detailed
report. It will accept a CVS file as input containing the details or
your bank account. The file has 3 columns:

- the date of the movement in format YYYY/MM/DD
- the amount as a signed number
- a description as provided by the bank

Example:

    2015/05/01;-100.00;Leclerc
    2015/05/01;-20.03;Total
    2015/05/02;-50.00;DAB
    2015/06/03;-12;RATP

For the first version, the program should produce the total of
expenses for the provided file. In our example it would produce 182.03

### Step 2: Expenses by months

You now want to have the amount by months. The program will product
the total of expenses aggregated by months.

    2015/05 170.03
    2015/06 12.00

### Step 3: Expenses by categories

You want to classify the expenses into categories. This will help you
gain a better understanding of the data and be able to create a budget
later on.

Design and implement a way to identify categories, such as all the
payment made to "Leclerc". Then produce a report with details by
categories, potentially by months.

Your could try to have "fuzzy" definition of categories. For instance,
group all entries related to Leclerc.

### Step 4: Produce graphs

Select your preferred graphical library and produce nice charts based
on the data produced by your application.
