function varargout = GUIprojekt81(varargin)
% GUIPROJEKT81 MATLAB code for GUIprojekt81.fig
%      GUIPROJEKT81, by itself, creates a new GUIPROJEKT81 or raises the existing
%      singleton*.
%
%      H = GUIPROJEKT81 returns the handle to a new GUIPROJEKT81 or the handle to
%      the existing singleton*.
%
%      GUIPROJEKT81('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPROJEKT81.M with the given input arguments.
%
%      GUIPROJEKT81('Property','Value',...) creates a new GUIPROJEKT81 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIprojekt81_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIprojekt81_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIprojekt81

% Last Modified by GUIDE v2.5 11-Jan-2015 22:26:27


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @GUIprojekt81_OpeningFcn, ...
    'gui_OutputFcn',  @GUIprojekt81_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUIprojekt81 is made visible.
function GUIprojekt81_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIprojekt81 (see VARARGIN)

% Choose default command line output for GUIprojekt81
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes GUIprojekt81 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIprojekt81_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename1,filepath1]=uigetfile({'*.csv','Pliki *.CSV z danymi'},...
    'Select Data File 1');
cd(filepath1);
ds = dataset('File',filename1,'Delimiter',',');
datf=dataset2struct(ds);
setGlobalS(datf);
global S
for k = 1:length(S)
    c{k} = [S(k).Genus];
end
ro=unique(c);
cRodz=['Wybierz rodzaj',ro];
set(handles.listaRodz,'String',cRodz) %nie zmienia� pod �adnym pozorem - ten kod wreszcie dzia�a! :-)


% wybr=get(handles.listaRodz,'String')
%for i=1:length(ga)
%  strncmp(wybr,ro,5)
% for i=1:length(ro)

%tu b�dzie switchcase dla listy gatunk�w
%jak rodzaj 'taki' -> gatunki 'taki''takie'
%przypadek bazowy: if (nie zosta�a zmieniona warto��?
% user nie zmieni� warto�ci listaRodz
%Ale do tego musz� ustawi� stringa 'wybierz rodzaj' i do��czy� go do ro??
%itd. i wtedy set(handles.listaGat, 'Enable','off')
%tu b�dzie switchcase dla listy gatunk�w
%jak rodzaj 'taki' -> gatunki 'taki''takie'
% else
% switch get(handles.listaRodz,'String')
% case
%     if (get(handles.listaRodz,'String'=='Wybierz rodzaj')&&get(handles.rbgat,'Value'==0))
%       set(handles.listaGat,'Enable','off')
%  elseif (get(handles.listaRodz,'String'=='Wybierz rodzaj')&&get(handles.rbgat,'Value'==1))
%     set(handles.listaGat,'Enable','on','String','Prosz� najpierw wybra� rodzaj')
% end

% --- Executes when selected object is changed in uipanel7.
function uipanel7_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel7
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
if (get(handles.rbgat,'Value') == 1)
    set(handles.listaGat,'Enable', 'on')
elseif (get(handles.rbro,'Value') == 1)
    set(handles.listaGat,'Enable','off')
end



function listaRodz_Callback(hObject, eventdata, handles)
% hObject    handle to listaRodz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global S
for z = 1:length(S)
    d{z} = [S(z).Genus S(z).species];
end
ga=unique(d);
set(handles.listaGat,'String',ga)
ul=length(ga);
%%%
wybRodz=get(handles.listaRodz,'String');
porS=(strcmp(wybRodz,'Wybierz rodzaj'));
rbgatVal=(get(handles.rbgat,'Value'));
if ((porS==1)&(rbgatVal==0))
    set(handles.listaGat,'Enable','off')
elseif ((porS==1)&(rbgatVal==1))
    set(handles.listaGat,'Enable','on','String','Najpierw wybierz rodzaj')
else
    for u=1:ul
        if strncmp(wybRodz,ga(ul),6)==1
            set(handles.listaGat,'Value',ga(ul))
        end
    end
end
%%%


% Hints: contents = cellstr(get(hObject,'String')) returns listaRodz contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listaRodz


% --- Executes during object creation, after setting all properties.
function listaRodz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listaRodz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in listaGat.
function listaGat_Callback(hObject, eventdata, handles)
% hObject    handle to listaGat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: contents = cellstr(get(hObject,'String')) returns listaGat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listaGat


% --- Executes during object creation, after setting all properties.
function listaGat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listaGat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%set(hObject,'Enable','Off')


% --- Executes on button press in radiobtnr.
function radiobtnr_Callback(hObject, eventdata, handles)
% hObject    handle to radiobtnr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%if (get(handles.radiobtng,'Value') == 1)
%set(handles.listaGat,'Enable', 'on')
% elseif (get(handles.radiobtnr,'Value') == 1)
%    set(handles.listaGat,'Enable','off')
%end
% Hint: get(hObject,'Value') returns toggle state of radiobtnr

% --- Executes on button press in radiobtng.
function radiobtng_Callback(hObject, eventdata, handles)
% hObject    handle to radiobtng (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function plikMenu_Callback(hObject, eventdata, handles)
% hObject    handle to plikMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function programMenu_Callback(hObject, eventdata, handles)
% hObject    handle to programMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function instrukcja_Callback(hObject, eventdata, handles)
% hObject    handle to instrukcja (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function zapiszWykres_Callback(hObject, eventdata, handles)
% hObject    handle to zapiszWykres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function zapiszArkusz_Callback(hObject, eventdata, handles)
% hObject    handle to zapiszArkusz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function wylacz_Callback(hObject, eventdata, handles)
% hObject    handle to wylacz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);