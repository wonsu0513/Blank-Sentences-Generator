clc; clear all;

wonsu0513 = 2; % 빈칸앞에 표시되는 단어수 설장 1인경우 Matlab -> M_____;

fp = fopen('BeforeReading.txt','r'); % 리딩자료 입력 'BeforeReading.txt'파일에 자료 넣고 저장하시면됩니다.
InputFileString = textscan(fp,'%s');
SizeOfTxtFile = size(InputFileString{1,1});
fclose(fp);

OutputFileString = cell(size(SizeOfTxtFile(1,1))); 


for i=1:SizeOfTxtFile(1,1)
    temp = InputFileString{1,1}{i,1};
    StrSize = length(temp);
    if StrSize == wonsu0513;
        OutputFileString{1,1}{i,1} = temp;
    else
        for j=wonsu0513+1:StrSize 
            if temp(1,j) =='.';                
            elseif temp(1,j) ==','; 
            elseif temp(1,j) =='!'; 
            elseif temp(1,j) =='?';
            elseif temp(1,j) =='(';
            elseif temp(1,j) =='A';                
            elseif temp(1,j) =='B';
            elseif temp(1,j) =='C';
            elseif temp(1,j) =='D';
            elseif temp(1,j) =='E';
            elseif temp(1,j) =='F';
            elseif temp(1,j) ==')'; 
            elseif temp(1,j) ==':';             
            elseif temp(1,j) ==';';
            elseif temp(1,j) =='-'; 
            elseif temp(1,j) =='?';
            elseif temp(1,j) =='$';
            elseif temp(1,j) =='*';    
            elseif temp(1,j) =='/';
            elseif temp(1,j) =='?'; 
                
            else
                temp(1,j) = '_';  
            end              
        end
        OutputFileString{1,1}{i,1} = temp;
    end
end

fp= fopen('CompletedReading.txt','w');
fprintf(fp,'%s ',OutputFileString{1,1}{:});
fclose(fp);
