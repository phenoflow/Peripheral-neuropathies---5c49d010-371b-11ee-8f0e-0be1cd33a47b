# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"A531300","system":"readv2"},{"code":"F366.00","system":"readv2"},{"code":"F371000","system":"readv2"},{"code":"F371100","system":"readv2"},{"code":"F373.00","system":"readv2"},{"code":"F374.00","system":"readv2"},{"code":"F374100","system":"readv2"},{"code":"F374200","system":"readv2"},{"code":"F374300","system":"readv2"},{"code":"F374400","system":"readv2"},{"code":"F374500","system":"readv2"},{"code":"F374800","system":"readv2"},{"code":"F374900","system":"readv2"},{"code":"F374A00","system":"readv2"},{"code":"F374z00","system":"readv2"},{"code":"F376.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-neuropathies-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
