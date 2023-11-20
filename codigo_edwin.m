function varargout = codigo_edwin(varargin)
% PRACTICA10 MATLAB code for PRACTICA10.fig
%      PRACTICA10, by itself, creates a new PRACTICA10 or raises the existing
%      singleton*.
%
%      H = PRACTICA10 returns the handle to a new PRACTICA10 or the handle to
%      the existing singleton*.
%
%      PRACTICA10('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICA10.M with the given input arguments.
%
%      PRACTICA10('Property','Value',...) creates a new PRACTICA10 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PRACTICA10_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PRACTICA10_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PRACTICA10

% Last Modified by GUIDE v2.5 02-Mar-2022 10:33:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PRACTICA10_OpeningFcn, ...
                   'gui_OutputFcn',  @PRACTICA10_OutputFcn, ...
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


% --- Executes just before PRACTICA10 is made visible.
function PRACTICA10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PRACTICA10 (see VARARGIN)

% Choose default command line output for PRACTICA10
handles.output = hObject;
set(handles.uitable1,'FontSize',10,'data',...
{'Mínimo' 0 0;
'Máximo' 0 0;...
'x' 0 0;
'y' 0 0;
'ancho' 0 0;...
'alto' 0 0;
'Valor' 0 0},...
'ForegroundColor',[1 0 0],'FontWeight','bold',...
'ColumnEditable',true);
set(handles.uitable2,'FontSize',10,'data',...
   [-5 10;5 40], ...
    'ForegroundColor',[0 0 1],'FontWeight','bold',...
'ColumnEditable',true);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PRACTICA10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PRACTICA10_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
if get(handles.radiobutton1,'Value')==1
Valor=get(handles.slider1,'Value')
Posicion=get(handles.slider1,'Position')
Minimo=get(handles.slider1,'min')
Maximo=get(handles.slider1,'max')
set(handles.slider2,'Value',sin(Valor))
Valor2=get(handles.slider2,'Value')
Posicion2=get(handles.slider2,'Position')
Minimo2=get(handles.slider2,'min')
Maximo2=get(handles.slider2,'max')
plot(Valor,Valor2,'or');hold on;
set(handles.uitable1,'FontSize',10,'data',...
    {'Minimo' Minimo Minimo2; ...
    'Maximo' Maximo Maximo2;...
    'x' Posicion(1,1) Posicion2(1,1);...
    'y' Posicion(1,2) Posicion2(1,2);...
    'ancho' Posicion(1,3) Posicion2(1,3);...
    'alto' Posicion(1,4) Posicion2(1,4);...
    'Cursor' Valor Valor2},...
    'ForegroundColor',[1 0 1],'FontWeight','bold')
else 
    cla;
    %y=(y2-y1)*x+y1
end
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
if get(handles.radiobutton1,'Value')==1
Valor2=get(handles.slider2,'Value')
Posicion2=get(handles.slider2,'Position')
Minimo2=get(handles.slider2,'min')
Maximo2=get(handles.slider2,'max')
set(handles.slider1,'Value',sin(Valor2))
Valor=get(handles.slider1,'Value')
Posicion=get(handles.slider1,'Position')
Minimo=get(handles.slider1,'min')
Maximo=get(handles.slider1,'max')
plot(Valor,Valor2,'ob');hold on;
set(handles.uitable1,'FontSize',10,'data',...
    {'Minimo' Minimo Minimo2; ...
    'Maximo' Maximo Maximo2;...
    'x' Posicion(1,1) Posicion2(1,1);...
    'y' Posicion(1,2) Posicion2(1,2);...
    'ancho' Posicion(1,3) Posicion2(1,3);...
    'alto' Posicion(1,4) Posicion2(1,4);...
    'Cursor' Valor Valor2},...
    'ForegroundColor',[1 0 1],'FontWeight','bold')
else
    cla;
end
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