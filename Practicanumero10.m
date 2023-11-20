function varargout = Practicanumero10(varargin)
% PRACTICANUMERO10 MATLAB code for Practicanumero10.fig
%      PRACTICANUMERO10, by itself, creates a new PRACTICANUMERO10 or raises the existing
%      singleton*.
%
%      H = PRACTICANUMERO10 returns the handle to a new PRACTICANUMERO10 or the handle to
%      the existing singleton*.
%
%      PRACTICANUMERO10('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICANUMERO10.M with the given input arguments.
%
%      PRACTICANUMERO10('Property','Value',...) creates a new PRACTICANUMERO10 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Practicanumero10_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Practicanumero10_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Practicanumero10

% Last Modified by GUIDE v2.5 08-Mar-2022 11:27:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Practicanumero10_OpeningFcn, ...
                   'gui_OutputFcn',  @Practicanumero10_OutputFcn, ...
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


% --- Executes just before Practicanumero10 is made visible.
function Practicanumero10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Practicanumero10 (see VARARGIN)

% Choose default command line output for Practicanumero10
handles.output = hObject;
set(handles.uitable1,'FontSize',10,'data',...
{'Mínimo' 0 0;
'Maximo' 0 0;...
'x' 0 0;
'y' 0 0;
'ancho' 0 0;...
'alto' 0 0;
'Valor' 0 0}',...
'ForegroundColor',[1 0 0],'FontWeight','bold',...
'ColumnEditable',true);

set(handles.uitable2,'FontSize',10,'data',...
[-5 5;-100 400],'ForegroundColor',[1 0 0],'FontWeight','bold',...
'ColumnEditable',true);



% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Practicanumero10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Practicanumero10_OutputFcn(hObject, eventdata, handles) 
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
if get(handles.radiobutton1,'Value')==1 %%slider en x
Valor=get(handles.slider1,'Value');
Posicion=get(handles.slider1,'Position');
Minimo=get(handles.slider1,'min');
Maximo=get(handles.slider1,'max');

set(handles.slider2,'Value',Valor);
Valor2=get(handles.slider2,'Value')
Posicion2=get(handles.slider2,'Position')
Minimo2=get(handles.slider2,'min');
Maximo2=get(handles.slider2,'max');

plot(Valor,Valor2,'*g');hold on;grid on
text(.6,.8,'Jose Alberto B.M.','color',[.21 .12 .12],'fontsize',16 ...
    ,'horizontalalignment','center')

set(handles.uitable1,'fontsize',10,'data', ...
    {'Minimo' Minimo Minimo2; ...
    'Maximo' Maximo Maximo2; ...
    'x' Posicion(1,1)  Posicion2(1,1); ...
    'y' Posicion(1,2)  Posicion2(1,2); ...
    'ancho' Posicion(1,3) Posicion2(1,3); ...
    'alto' Posicion(1,4)  Posicion2(1,4); ...
    'Cursor' Valor Valor2},...
    'ForegroundColor',[1 0 1],'FontWeight','bold')

   

elseif get(handles.radiobutton2,'Value')==1 %% boton 2 slider 1,2

T1=get(handles.uitable1,'data');
T2=get(handles.uitable2,'data');
    Valor=get(handles.slider1,'Value'); %%slider 1, tabla 2

T1{8,2}=(T2(1,2)-T2(1,1)')*Valor+T2(1,1);
  T1{8,3}=T1{8,2}.^2+3*T1{8,2}*10;
  
 Valor2=(T1{8,3}-T2(2,1))/(T2(2,2)-T2(2,1));
 set(handles.slider2,'Value',Valor2); %%slider 2, tabla 2

  set(handles.uitable1,'data',T1);

 plot(T1{8,2},T1{8,3},'*m');hold on;grid on

end

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
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

if get(handles.radiobutton1,'Value')==1 %%boton 1

Valor2=get(handles.slider2,'Value')
Posicion2=get(handles.slider2,'Position')
Minimo2=get(handles.slider2,'min');
Maximo2=get(handles.slider2,'max');

set(handles.slider1,'Value',sin(Valor2))
Valor=get(handles.slider1,'Value')
Posicion=get(handles.slider1,'Position');
Minimo=get(handles.slider1,'min');
Maximo=get(handles.slider1,'max')


plot(Valor,Valor2,'or');hold on;grid on


set(handles.uitable1,'fontsize',10,'data', ...
    {'Minimo' Minimo Minimo2; ...
    'Maximo' Maximo Maximo2; ...
    'x' Posicion(1,1)  Posicion2(1,1); ...
    'y' Posicion(1,2)  Posicion2(1,2); ...
    'ancho' Posicion(1,3) Posicion2(1,3); ...
    'alto' Posicion(1,4)  Posicion2(1,4); ...
    'Cursor' Valor Valor2},...
    'ForegroundColor',[1 0 1],'FontWeight','bold')



elseif get(handles.radiobutton2,'Value')==1 %% boton 2 slider 1,2

T1=get(handles.uitable1,'data');
T2=get(handles.uitable2,'data');

    Valor=get(handles.slider2,'Value'); %%slider 1, tabla 2

T1{8,2}=(T2(1,2)-T2(1,1)')*Valor+T2(1,1);
  T1{8,3}=T1{8,2}.^2*10;
  
 Valor2=(T1{8,3}-T2(2,1))/(T2(2,2)-T2(2,1));
 set(handles.slider1,'Value',Valor2); %%slider 2, tabla 2

  set(handles.uitable1,'data',T1);

 plot(T1{8,2},T1{8,3},'<k');hold on;grid on
 text(2.5,0,'Jose Alberto B.M.','color',[.21 .12 .12],'fontsize',16 ...
    ,'horizontalalignment','center')

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


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobutton1,'Value')==1
axis([0 1 0 1]);
elseif get(handles.radiobutton2,'Value')==1
T2=get(handles.uitable2,'data');
axis([T2(1,1) T2(1,2) T2(2,1) T2(2,2)]);
end
if get(handles.radiobutton1,'value')==1
    axes(handles.axes1);cla;

   elseif get(handles.radiobutton2,'value')==1
         axes(handles.axes1);cla;
end

% --- Executes when entered data in editable cell(s) in uitable2.
function uitable2_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobutton1,'Value')==1
axis([0 1 0 1]);
elseif get(handles.radiobutton2,'Value')==1
T2=get(handles.uitable2,'data');
axis([T2(1,1) T2(1,2) T2(2,1) T2(2,2)]);
end
