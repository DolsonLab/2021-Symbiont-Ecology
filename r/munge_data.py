import os.path
import gzip

folder = '../data/'

treatment_postfixes = ['0.01', '0.02', '0.03', '0.04', '0.05', '0.06', '0.07', '0.08', '0.09', '0.10']
partners = ["Host", "Sym"]
#reps = range(1001, 1021)
final_update = 99900
header = "uid treatment rep update donate partner\n"

outputFileName = "munged_zoom.dat"

outFile = open(outputFileName, 'w')
outFile.write(header)

for t in treatment_postfixes:
     for p in partners:
        # if t == "0":
        #     for r in range(0,20):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()
        if t == "0.01":
            for r in range(100,120):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()
        if t == "0.02":
            for r in range(200,220):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()
        if t == "0.03":
            for r in range(300,320):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()
        if t == "0.04":
            for r in range(400,420):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()
        if t == "0.05":
            for r in range(500,520):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()
        if t == "0.06":
            for r in range(600,620):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()
        if t == "0.07":
            for r in range(700,720):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()  
        if t == "0.08":
            for r in range(800,820):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()
        if t == "0.09":
            for r in range(900,920):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()    

        if t == "0.10":
            for r in range(1000,1020):
                fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
                uid = t + "_" + str(r)
                curFile = open(fname, 'r')
                for line in curFile:
                    if (line[0] != "u"):
                        splitline = line.split(',')
                        if int(splitline[0]) == final_update:
                            outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
                            outFile.write(outstring1)
                curFile.close()
        # if t == "0.11":
        #     for r in range(220,240):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()
        # if t == "0.12":
        #     for r in range(240,260):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()
        # if t == "0.13":
        #     for r in range(260,280):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()
        # if t == "0.14":
        #     for r in range(280,300):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()
        # if t == "0.15":
        #     for r in range(300,320):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()
        # if t == "0.16":
        #     for r in range(320,340):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()
        # if t == "0.17":
        #     for r in range(340,360):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()  
        # if t == "0.18":
        #     for r in range(360,380):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()
        # if t == "0.19":
        #     for r in range(380,400):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()  
        # if t == "0.29":
        #     for r in range(400,420):
        #         fname = folder+"symbulation_vt_zoom_"+t+"/" +str(r)+"/"+p+"Vals_data_.data"
        #         uid = t + "_" + str(r)
        #         curFile = open(fname, 'r')
        #         for line in curFile:
        #             if (line[0] != "u"):
        #                 splitline = line.split(',')
        #                 if int(splitline[0]) == final_update:
        #                     outstring1 = "{} {} {} {} {} {}\n".format(uid, t, r, splitline[0], splitline[1], p)
        #                     outFile.write(outstring1)
        #         curFile.close()                          
outFile.close()
