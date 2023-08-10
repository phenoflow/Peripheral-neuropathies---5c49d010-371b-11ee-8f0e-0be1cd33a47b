# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"C106.12","system":"readv2"},{"code":"C108B11","system":"readv2"},{"code":"C109A11","system":"readv2"},{"code":"C10EB00","system":"readv2"},{"code":"C10FA00","system":"readv2"},{"code":"C10FA11","system":"readv2"},{"code":"F367.00","system":"readv2"},{"code":"F378.00","system":"readv2"},{"code":"F37y000","system":"readv2"},{"code":"Fyu1300","system":"readv2"},{"code":"Fyu6D00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-neuropathies-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
