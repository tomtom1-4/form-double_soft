import numpy as np 


f = open('results/coli1.txt', 'r')
coli1 = f.read()
coli1 = coli1.replace(" ", "")

f = open('results/coli2.txt', 'r')
coli2 = f.read()
coli2 = coli2.replace(" ", "")

f = open('results/colij.txt', 'r')
colij = f.read()
colij = colij.replace(" ", "")


def scan_next(in_string, indexin): 
    j = indexin 
    scan = ""
    while in_string[j] in "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-01234567890": 
        if in_string[j] == "-" and in_string[j-1] != "^":
            break
        scan += in_string[j] 
        j += 1 
    
    indexout = j
    return scan, indexout

def interprete(in_string):
    out_string = "\n" 

    i = 0
    length = 0
    while i < len(in_string):
        command, i = scan_next(in_string, i)
        if (command != ""):
            if (command == "minkovski"):
                out_string += "minkovski"
                length = 9
            elif (command == "Pi"):
                out_string += "M_PI"
                length = 4
            elif (command == "i_"):
                out_string += "I"
                length = 1
            elif (command == "E3" and in_string[i] != "("): 
                out_string += "&ep3[0]"
                length = 7
            elif (command == "E4" and in_string[i] != "("): 
                out_string += "&ep4[0]" 
                length = 7
            elif (command == "log"): 
                out_string += "log"
                length = 3
            elif (command == "CA"): 
                out_string += "C_A" 
                length = 3
            elif (command == "nl"): 
                out_string += "n_f" 
                length = 3
            elif (command == "TF"): 
                out_string += "T_F" 
                length = 3
            elif (command[0] in "0123456789"): 
                out_string += command + "."
                length = len(command) + 1
            elif (command == "kappa"): 
                out_string = out_string[0:-1]
                out_string += "["
                out_string += "kappa"
                out_string += "]"
                i += 1
            elif (command != ""): 
                out_string += command
                length = len(command)
        else:
            if (in_string[i] == "^"):
                com, j = scan_next(in_string, i + 1)
                out_string = out_string[0:-length] + "pow(" + out_string[-length:] + "," + com + ")"
                i = j
            elif (in_string[i:i+1] == "\n"): 
                out_string += "\n \t" 
                i += 1
            else:
                out_string += in_string[i]
                oldi = i
                i += 1

    print(in_string)
    print("\n")
    print(out_string)
    print("###########################################################################################\n")
    return out_string 

def PrintDeclaration(declarations):
    outputfile.write("\n")
    for i in range(1, declarations): 
        outputfile.write("\tstd::complex<double> Z" + str(i) + "_;\n")
 
    outputfile.write("\tdouble s12 = 2 * minkovski(p1,p2);\n") 
    outputfile.write("\tdouble s13 = 2 * minkovski(p1,p3);\n") 
    outputfile.write("\tdouble s14 = 2 * minkovski(p1,p4);\n") 
    outputfile.write("\tdouble s23 = 2 * minkovski(p2,p3);\n") 
    outputfile.write("\tdouble s24 = 2 * minkovski(p2,p4);\n") 
    outputfile.write("\tdouble s34 = 2 * minkovski(p3,p4);\n")
    
    outputfile.write("\tstd::complex<double> p1E3 = minkovski(p1, &ep3[0]);\n")
    outputfile.write("\tstd::complex<double> p2E3 = minkovski(p2, &ep3[0]);\n")
    outputfile.write("\tstd::complex<double> p4E3 = minkovski(p4, &ep3[0]);\n")
    outputfile.write("\tstd::complex<double> p1E4 = minkovski(p1, &ep4[0]);\n")
    outputfile.write("\tstd::complex<double> p2E4 = minkovski(p2, &ep4[0]);\n")
    outputfile.write("\tstd::complex<double> p3E4 = minkovski(p3, &ep4[0]);\n")
    outputfile.write("\tstd::complex<double> E3E4 = minkovski(&ep3[0], &ep4[0]);\n")
    
    outputfile.write("\tdouble logs12 = std::log(s12/(mu * mu));\n")
    outputfile.write("\tdouble logs13 = std::log(s13/(mu * mu));\n") 
    outputfile.write("\tdouble logs14 = std::log(s14/(mu * mu));\n") 
    outputfile.write("\tdouble logs23 = std::log(s23/(mu * mu));\n") 
    outputfile.write("\tdouble logs24 = std::log(s24/(mu * mu));\n") 
    outputfile.write("\tdouble logs34 = std::log(s34/(mu * mu));\n")
    outputfile.write("\tstd::complex<double> logc = std::log(s34/(mu * mu)) - I * M_PI;\n") 
    outputfile.write("\tdouble logs13s14 = std::log((s13 + s14)/(mu * mu));\n") 
    outputfile.write("\tdouble logs23s24 = std::log((s23 + s24)/(mu * mu));\n")
    
    outputfile.write("\tdouble Li1 = DiLog(1 - 1/(s24 + s23)*s23);\n") 
    outputfile.write("\tdouble Li2 = DiLog(1 - 1/(s14 + s13)*s14);\n") 
    outputfile.write("\tdouble Li3 = DiLog(1 - 1/(s14 + s13)*1/(s24 + s23)*s12*s34);\n")
    
    outputfile.write("\tdouble denom1 = 1/(s24 + s23);\n") 
    outputfile.write("\tdouble denom2 = 1/(s14 + s13);\n") 
    outputfile.write("\tdouble denom3 = 1/( - s14*s24 - s14*s23 - s13*s24 - s13*s23 + s12*s34);\n") 
    outputfile.write("\tdouble denom4 = 1/(s14*s14*s23*s23 - 2*s13*s14*s23*s24 + s13*s13*s24*s24 - 2*s12*s14*s23*s34- 2*s12*s13*s24*s34 + s12*s12*s34*s34);\n")
    

coli1terms = interprete(coli1)
coli2terms = interprete(coli2)
colijterms = interprete(colij)

outputfile = open("/home/tom/Uni/Semester_X/master/programs/recola_otter/recola2-2.2.3/sims/double_soft/current.cpp", "w")
outputfile.write("#include <iostream> \n#include <complex> \n#include \"params.cpp\" \n#include <vector> \n#include \"array_manipulation.cpp\"\n \n")

outputfile.write("\nstd::complex<double> col1(std::vector<std::complex<double> > ep3, std::vector<std::complex<double> > ep4, double *p1, double *p2, double *p3, double *p4) {\n")
PrintDeclaration(24)
outputfile.write(coli1terms)
outputfile.write(";\n\treturn coli1terms;\n}\n\n")

outputfile.write("\nstd::complex<double> col2(std::vector<std::complex<double> > ep3, std::vector<std::complex<double> > ep4, double *p1, double *p2, double *p3, double *p4) {\n")
PrintDeclaration(21)
outputfile.write(coli2terms)
outputfile.write(";\n\treturn coli2terms;\n}\n\n")

outputfile.write("\nstd::complex<double> col3(std::vector<std::complex<double> > ep3, std::vector<std::complex<double> > ep4, double *p1, double *p2, double *p3, double *p4) {\n")
PrintDeclaration(826)
outputfile.write(colijterms)
outputfile.write("\n\treturn colijterms;\n}\n\n")

outputfile.close()

