import csv

def read_data(filename):
    f = open(filename, 'r')
    csvfile = csv.reader(f)
    f.close
    return [row for row in csvfile]

def write_data(datas):
    fieldnames = ['email','mobile_no']
    with open('test_user.csv', 'wb') as csvfile:
        spamwriter = csv.DictWriter(csvfile, fieldnames=fieldnames)
        spamwriter.writeheader()
        for data in datas:
            spamwriter.writerow(data)
    return data