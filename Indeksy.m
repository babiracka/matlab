   function Indeksy( gen )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
gen=get(handles.listaRodz,'Value');
for g=1:length(S)
    if strcmp(gen,S(g).Genus)==1
    indeksy=[S(g).species]
    end
end

   end

