clc; clear all;

wonsu0513 = 2; % ��ĭ�տ� ǥ�õǴ� �ܾ�� ���� 1�ΰ�� Matlab -> M_____;

fp = fopen('BeforeReading.txt','r'); % �����ڷ� �Է� 'BeforeReading.txt'���Ͽ� �ڷ� �ְ� �����Ͻø�˴ϴ�.
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
