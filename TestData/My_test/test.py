import os
import re
import random 
data_source=input("describe the test data:")
#data_source=""
case=input("Your test files num >1?(y/n):")=="y"
#case=
#xlinx=input("your xilinx src is:")
if(case):
    file_src=input("input asm test files folder src:(must like this D:\\P5\\test\\)")
    #file_src=""
    file_list=os.listdir(file_src)
    k=1
    for name in file_list:
        namek="testpoint"+str(k)+".asm"
        try:
            os.rename(file_src+name,file_src+namek)
        except:
            pass
        k=k+1
    file_num=k-1
    error_list=[]
    wrong_cnt=0
    #wrong_list=[5,6,15,16,23,28,29]
    for j in range(1,file_num+1):  
        # if(j not in wrong_list):
        #     continue
        path=os.path.dirname(os.path.realpath(__file__))
        os.chdir(path)  
        asmfilename=file_src+"testpoint"+str(j)+".asm"
        xlinx="D:\\Xilinx\\14.7\\ISE_DS\\ISE" 
        time="10ms"
        filelist=os.walk(path) 
        os.environ['XILINX']=xlinx
        with open("mips.prj","w") as prj:
            for folder in filelist:
                for file in folder[2]:
                    if(len(file.split("."))>1 and file.split(".")[1]=="v"):
                        prj.write("verilog work \""+folder[0]+"\\"+file+"\"\n")
        with open("mips.tcl","w") as tcl:
            tcl.write("run "+time+";\nexit;\n")
        os.system("java -jar Mars.jar db a nc mc CompactDataAtZero dump .text HexText code.txt 1000000 "+asmfilename)
        os.system("java -jar Mars.jar  db nc mc CompactDataAtZero dump .text HexText code.txt >ans.txt 1000000 "+asmfilename)
        os.system(xlinx+"\\bin\\nt64\\fuse "+"--nodebug  --prj mips.prj -o mips.exe mipsAutoTest >log.txt")
        os.system("mips.exe -nolog -tclbatch mips.tcl >my.txt")

        process=0
        with open("my.txt","r") as my:
            lines=my.readlines()
            if(len(lines)==0):
                print("fail to simulate")
                os._exit(1)
            if(lines[0][0]=='I'):
                process=1
        my.close()
        n=0
        while(1):
            if(lines[n][0]=="@"): 
                break
            else: 
                n=n+1
        if(process):
            with open("my.txt","w") as my:
                my.writelines(lines[n:])
        i=0
        biao=0
        with open("my.txt","r") as my:
            with open("ans.txt","r") as ans:
                while(1):
                    i+=1
                    l1=my.readline().strip()
                    l2=ans.readline().strip()
                    if((l1== "" or l1==None)and(l2=="" or l2==None)):
                        break
                    elif l1!=l2 and not "$ 0"in l2 and not "$ 0" in  l1:
                        biao=1
                        error_list.append(asmfilename)
                        try:
                            code_line=int(l1[6:9],16)/4+1
                        except:
                            code_line=0
                        if l2=="" or l2 == None:  
                            print("Wrong answer occur in line %d of your ans and in line %d of test code: "%(i,code_line)+"we got "+l1+" when we expected Nothing")
                        else:
                            print("Wrong answer occur in line %d of your ans and in line %d of test code: "%(i,code_line)+"we got "+l1+" when we expected "+l2)
                        break
                        
                if biao==0:
                    print("Accepted on the point %d"%j)
                else:
                    print("Wrong on the point %d"%j)
                    wrong_cnt=wrong_cnt+1
        my.close()
        ans.close()
    if(wrong_cnt):
        print("------------------------------------\nYou have %d wrong answer\n test data description:%s\nthey are:"%(wrong_cnt,data_source))
        for x in error_list:
            print(x)
    else:
        print("------------------------------------\ncongratulations!You accepted %d point\ntest data description:%s"%(file_num,data_source))
    os._exit(1)
else:
    file_name="G:\P5_test\\test_asm\other\\testpoint4.asm" #input("input asm test file name(can have src):")
    path=os.path.dirname(os.path.realpath(__file__))
    os.chdir(path)  
    asmfilename=file_name
    xlinx="D:\\Xilinx\\14.7\\ISE_DS\\ISE" 
    time="10us"
    filelist=os.walk(path) 
    os.environ['XILINX']=xlinx
    with open("mips.prj","w") as prj:
        for folder in filelist:
            for file in folder[2]:
                if(len(file.split("."))>1 and file.split(".")[1]=="v"):
                    prj.write("verilog work \""+folder[0]+"\\"+file+"\"\n")
    with open("mips.tcl","w") as tcl:
        tcl.write("run "+time+";\nexit;\n")
    os.system("java -jar Mars.jar db a nc mc CompactDataAtZero dump .text HexText code.txt 1000000 "+asmfilename)
    os.system("java -jar Mars.jar  db nc mc CompactDataAtZero dump .text HexText code.txt >ans.txt 1000000 "+asmfilename)
    os.system(xlinx+"\\bin\\nt64\\fuse "+"--nodebug  --prj mips.prj -o mips.exe mipsAutoTest >log.txt")
    os.system("mips.exe -nolog -tclbatch mips.tcl >my.txt")

    process=0
    with open("my.txt","r") as my:
        lines=my.readlines()
        if(len(lines)==0):
            print("fail to simulate")
            os._exit(1)
        if(lines[0][0]=='I'):
            process=1
    my.close()
    n=0
    while(1):
        if(lines[n][0]=="@"): 
            break
        else: 
            n=n+1
    if(process):
        with open("my.txt","w") as my:
            my.writelines(lines[n:])
    i=0
    biao=0
    wrong_cnt=0
    with open("my.txt","r") as my:
        with open("ans.txt","r") as ans:
            while(1):
                i+=1
                l1=my.readline().strip()
                l2=ans.readline().strip()
                if((l1== "" or l1==None)and(l2=="" or l2==None)):
                    break
                elif l1!=l2 and not "$ 0"in l2 and not "$ 0" in  l1:
                    biao=1
                    code_line=int("0x"+l1[6:9],16)/4+1
                    if l2=="" or l2 == None:  
                        print("Wrong answer occur in line %d of your ans and in line %d of test code: "%(i,code_line)+"we got "+l1+" when we expected Nothing")
                    else:
                        print("Wrong answer occur in line %d of your ans and in line %d of test code: "%(i,code_line)+"we got "+l1+" when we expected "+l2)
                    break
                    
            if biao==0:
                print("Accepted on this point")
            else:
                print("Wrong on the point")
                wrong_cnt=wrong_cnt+1
    my.close()
    ans.close()
    os._exit(1)