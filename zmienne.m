%[filename1,filepath1]=uigetfile({'*.csv','Pliki *.CSV z danymi'},...
 % 'Select Data File 1');
  %cd(filepath1);
 ds = dataset('File',filename1,'Delimiter',',');
  S=dataset2struct(ds); 
 for k = 1:length(S)
    c{k} = [S(k).Genus];
 end

    ro=unique(c);
    %for i=1:length(S)
       % for j=1:length(ro)
          id=find([S.Genus]=='"Baiomys"')
      % end
   % end
%selectedGenus %niech to bêdzie tablica indeksów rekordów dla danego rodzaju

%for i=1:length(S) %iteracja przez cala strukture
   % for j=1:length(ro) 
    %    %szukam species takich ze Genus(i)=ro(j). Powinno byæ 25 unikalnych
        %kombinacji genus+rodzaj, jest 10 :/
     %   if (S(i).Genus==ro(j))
      %      gaty{i}=[S(i).Genus, S(i).species];
       % end
    %end
%end