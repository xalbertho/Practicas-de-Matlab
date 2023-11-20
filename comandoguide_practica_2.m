function varargout = comandoguide_practica_2(varargin)
% COMANDOGUIDE_PRACTICA_2 MATLAB code for comandoguide_practica_2.fig
%      COMANDOGUIDE_PRACTICA_2, by itself, creates a new COMANDOGUIDE_PRACTICA_2 or raises the existing
%      singleton*.
%
%      H = COMANDOGUIDE_PRACTICA_2 returns the handle to a new COMANDOGUIDE_PRACTICA_2 or the handle to
%      the existing singleton*.
%
%      COMANDOGUIDE_PRACTICA_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMANDOGUIDE_PRACTICA_2.M with the given input arguments.
%
%      COMANDOGUIDE_PRACTICA_2('Property','Value',...) creates a new COMANDOGUIDE_PRACTICA_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before comandoguide_practica_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to comandoguide_practica_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help comandoguide_practica_2

% Last Modified by GUIDE v2.5 02-Mar-2022 10:32:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @comandoguide_practica_2_OpeningFcn, ...
                   'gui_OutputFcn',  @comandoguide_practica_2_OutputFcn, ...
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


% --- Executes just before comandoguide_practica_2 is made visible.
function comandoguide_practica_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to comandoguide_practica_2 (see VARARGIN)

% Choose default command line output for comandoguide_practica_2
handles.output = hObject;

hObject
clc;
Valor=get(handles.slider3,'value')
posicion=get(handles.slider3,'position')
minimo=get(handles.slider3,'min')
maximo=get(handles.slider3,'max')
set(handles.uitable1,'data',{'minimimo' minimo;'maximo' maximo;...
    'posicion' posicion; 'vaor' Valor,l',...
    'fontsize',10,'foregroundcolor',[1 0 0]}

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes comandoguide_practica_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = comandoguide_practica_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
set(handles.uitable1,'data',[minimo maximo posicion Valor]',...
    'fontsize',10,'foregroundcolor',[1 0 0])

% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
