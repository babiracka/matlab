%tu b�dzie switchcase dla listy gatunk�w
    %jak rodzaj 'taki' -> gatunki 'taki''takie'
    %przypadek bazowy: if (nie zosta�a zmieniona warto��? 
    % user nie zmieni� warto�ci listaRodz
    %Ale do tego musz� ustawi� stringa 'wybierz rodzaj' i do��czy� go do ro?? 
    %itd. i wtedy set(handles.listaGat, 'Enable','off')  done => ok
        %tu b�dzie switchcase dla listy gatunk�w
    %jak rodzaj 'taki' -> gatunki 'taki''takie'
    % else
    % switch get(handles.listaRodz,'String')
    % case 
    wybRodz=get(handles.listaRodz,'String')
    if ((strcmp(get(handles.listaRodz,'String'),'Wybierz rodzaj')==1)&&(get(handles.rbgat,'Value')==0))
    	set(handles.listaGat,'Enable','off')
    elseif ((strcmp(get(handles.listaRodz,'String'),'Wybierz rodzaj')==1)&&(get(handles.rbgat,'Value')==1))
        set(handles.listaGat,'Enable','on','String','Najpierw wybierz rodzaj')
 	else 
        for u=1:length(ga)
            if strncmp(wybRodz,ga(u),6)==1
                set(handles.listaGat,'Value',ga(u))
        end
        end
    end
    
    
            wybRodz=get(handles.listaRodz,'String')
        