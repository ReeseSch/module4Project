log_file = open("um-server-01.txt") #opening the txt file for the program to reference


def sales_reports(log_file): #starting the function
    for line in log_file: #for in loop
        line = line.rstrip() #removing any blank characters from the end of the line
        day = line[0:3] #telling where to look to define which day each line references
        if day == "Mon": #only displaying lines that have Mon
            print(line) #displaying the lines with the selected parameters


sales_reports(log_file)  #calling the function


# EXTRA CREDIT
def large_delivery(log_file):
  for line in log_file:
    line = [int(i) for i in line.split() if i.isdigit()]
    d = line[0]
    if d > 10 :
      print(line)


large_delivery(log_file)
