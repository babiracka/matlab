%Za³adowanie pliku do matlaba

function varargout = GUIanimals(varargin)
% GUIANIMALS MATLAB code for GUIanimals.fig
%      GUIANIMALS, by itself, creates a new GUIANIMALS or raises the existing
%      singleton*.
%
%      H = GUIANIMALS returns the handle to a new GUIANIMALS or the handle to
%      the existing singleton*.
%
%      GUIANIMALS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIANIMALS.M with the given input arguments.
%
%      GUIANIMALS('Property','Value',...) creates a new GUIANIMALS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIanimals_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIanimals_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIanimals

% Last Modified by GUIDE v2.5 16-Dec-2014 12:41:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIanimals_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIanimals_OutputFcn, ...
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


% --- Executes just before GUIanimals is made visible.
function GUIanimals_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIanimals (see VARARGIN)

% Choose default command line output for GUIanimals
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIanimals wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIanimals_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in lbTaxa.
function lbTaxa_Callback(hObject, eventdata, handles)
% hObject    handle to lbTaxa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lbTaxa contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lbTaxa


% --- Executes during object creation, after setting all properties.
function lbTaxa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lbTaxa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bTabela.
function bTabela_Callback(hObject, eventdata, handles)
% hObject    handle to bTabela (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bHist.
function bHist_Callback(hObject, eventdata, handles)
% hObject    handle to bHist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bLiniowy.
function bLiniowy_Callback(hObject, eventdata, handles)
% hObject    handle to bLiniowy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bSlupki.
function bSlupki_Callback(hObject, eventdata, handles)
% hObject    handle to bSlupki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Ten box ma mieæ zawartoœæ zale¿n¹ od pierwszego(z taksonami), ale nie musi
%byc u¿ywany - jest enabled gdy u¿ytkownik wybierze coœ w listboxTaxa
% --- Executes on selection change in lbSpecies.
function lbSpecies_Callback(hObject, eventdata, handles)
% hObject    handle to lbSpecies (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lbSpecies contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lbSpecies


% --- Executes during object creation, after setting all properties.
function lbSpecies_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lbSpecies (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over lbTaxa.
function lbTaxa_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to lbTaxa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
