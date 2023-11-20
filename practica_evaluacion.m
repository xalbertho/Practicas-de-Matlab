function varargout = practica_evaluacion(varargin)
% PRACTICA_EVALUACION MATLAB code for practica_evaluacion.fig
%      PRACTICA_EVALUACION, by itself, creates a new PRACTICA_EVALUACION or raises the existing
%      singleton*.
%
%      H = PRACTICA_EVALUACION returns the handle to a new PRACTICA_EVALUACION or the handle to
%      the existing singleton*.
%
%      PRACTICA_EVALUACION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICA_EVALUACION.M with the given input arguments.
%
%      PRACTICA_EVALUACION('Property','Value',...) creates a new PRACTICA_EVALUACION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before practica_evaluacion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to practica_evaluacion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help practica_evaluacion

% Last Modified by GUIDE v2.5 25-Apr-2022 21:18:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @practica_evaluacion_OpeningFcn, ...
                   'gui_OutputFcn',  @practica_evaluacion_OutputFcn, ...
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


% --- Executes just before practica_evaluacion is made visible.
function practica_evaluacion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to practica_evaluacion (see VARARGIN)

% Choose default command line output for practica_evaluacion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes practica_evaluacion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = practica_evaluacion_OutputFcn(hObject, eventdata, handles) 
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

if get(handles.radiobutton1,'value')==1
NM=get(handles.uitable1,'data');
NM2=get(handles.uitable2,'data');
R=size(NM);
R2=size(NM2);

 

for k=1:R2
    for h=1:R2
    MC{k,h}=NM{k,h}+NM2{k,h};
    end
end
   set(handles.uitable3,'data',MC);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif get(handles.radiobutton2,'value')==1
NM=get(handles.uitable1,'data');
NM2=get(handles.uitable2,'data');
R=size(NM);
R2=size(NM2);

 

for k=1:R2
    for h=1:R2
    MC{k,h}=NM{k,h}-NM2{k,h}
    end
end
   set(handles.uitable3,'data',MC);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif get(handles.radiobutton3,'value')==1
NM=get(handles.uitable1,'data');
A=[NM{1,1} NM{1,2} NM{1,3} NM{1,4};NM{2,1} NM{2,2} NM{2,3} NM{2,4};NM{3,1} NM{3,2} NM{3,3} NM{3,4};NM{4,1} NM{4,2} NM{4,3} NM{4,4}];
NM2=get(handles.uitable2,'data'); 
B=[NM2{1,1} NM2{1,2} NM2{1,3} NM2{1,4};NM2{2,1} NM2{2,2} NM2{2,3} NM2{2,4};NM2{3,1} NM2{3,2} NM2{3,3} NM2{3,4};NM2{4,1} NM2{4,2} NM2{4,3} NM2{4,4}];
[R0,C0]=size(A);
[R1,C1]=size(B);

 

for k=1:R0
    for h=1:C1
 x=0;
 for i=1:C0
     A(k,i)
     B(i,h)
     
     x=x+A(k,i)*B(i,h);
 end
 MC(k,h)=x
    end
end
 set(handles.uitable3,'data',MC);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 elseif get(handles.radiobutton4,'value')==1
NM=get(handles.uitable1,'data');
A=[NM{1,1} NM{1,2} NM{1,3} NM{1,4};NM{2,1} NM{2,2} NM{2,3} NM{2,4};NM{3,1} NM{3,2} NM{3,3} NM{3,4};NM{4,1} NM{4,2} NM{4,3} NM{4,4}];
NM2=get(handles.uitable2,'data'); 
B=[NM2{1,1} NM2{1,2} NM2{1,3} NM2{1,4};NM2{2,1} NM2{2,2} NM2{2,3} NM2{2,4};NM2{3,1} NM2{3,2} NM2{3,3} NM2{3,4};NM2{4,1} NM2{4,2} NM2{4,3} NM2{4,4}];
[R0,C0]=size(A);
[R1,C1]=size(B);

 

for k=1:R1
    for h=1:C0
 x=0;
 for i=1:C1
     B(k,i)
     A(i,h)
     
     x=x+B(k,i)*A(i,h);
 end
 MC(k,h)=x
    end
end
 set(handles.uitable3,'data',MC);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  elseif get(handles.radiobutton5,'value')==1
%      NM=get(handles.uitable1,'data');
% NM2=get(handles.uitable2,'data');
% R=NM;
% R2=size(NM2);
% K=str2sym(get(handles.edit1,'string'));
% 
% MC=R*K
% set(handles.uitable3,'data',MC);

 

elseif get(handles.radiobutton5,'value')==1
NM=get(handles.uitable1,'data');
R=size(NM);
K=str2num(get(handles.edit1,'string'));
%K=3;
for i=1:R
    for h=1:R
MC{i,h}=NM{i,h}*K
    end 
end
set(handles.uitable3,'Data',MC);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  elseif get(handles.radiobutton6,'value')==1
%      NM=get(handles.uitable1,'data');
% NM2=get(handles.uitable2,'data');
% R=NM;
% R2=NM2;
% K=str2sym(get(handles.edit1,'string'));
% 
% MC=R2*K
% set(handles.uitable3,'data',MC);

 

elseif get(handles.radiobutton6,'value')==1
NM2=get(handles.uitable2,'data');
R2=size(NM2);
K=str2num(get(handles.edit1,'string'));
for i=1:R2
    for h=1:R2
MC{i,h}=NM2{i,h}*K
    end 
end
set(handles.uitable3,'Data',MC);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif get(handles.radiobutton7,'value')==1
NM=get(handles.uitable1,'data');
NM2=get(handles.uitable2,'data');
MC=get(handles.uitable3,'data');
helpdlg('Para intercambiar matrices, recuerda que primero debes Guardar los Datos',...
        'ATENCIÓN');
pause(2)
answer = questdlg('¿Ya fueron guardados los datos?', ...
    'Menu', ...
    'Si ya fueron guardados','No los he guardado','No los he guardado');
% Handle response
switch answer
    case 'Si ya fueron guardados'
        disp([answer ' OK'])
        dessert = 1;
    case 'No los he guardado'
        disp([answer ' VAYA A GUARDAR'])
        dessert = 2;
end
set(handles.uitable3,'data',NM);
set(handles.uitable2,'data',NM2);
set(handles.uitable1,'Data',MC);

 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif get(handles.radiobutton8,'value')==1
NM=get(handles.uitable1,'data');
NM2=get(handles.uitable2,'data');
MC=get(handles.uitable3,'data');
helpdlg('Para intercambiar matrices, recuerda que primero debes Guardar los Datos',...
        'ATENCIÓN');
pause(2)
helpdlg('Para intercambiar matrices, recuerda que primero debes Guardar los Datos',...
        'ATENCIÓN');
pause(2)
answer = questdlg('¿Ya fueron guardados los datos?', ...
    'Menu', ...
    'Si ya fueron guardados','No los he guardado','No los he guardado');
% Handle response
switch answer
    case 'Si ya fueron guardados'
        disp([answer ' OK'])
        dessert = 1;
    case 'No los he guardado'
        disp([answer ' VAYA A GUARDAR'])
        dessert = 2;
end
set(handles.uitable1,'data',NM);
set(handles.uitable3,'data',NM2);
set(handles.uitable2,'Data',MC);

 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif get(handles.radiobutton9,'value')==1
NM=get(handles.uitable1,'data');
NM2=get(handles.uitable2,'data');
MC=get(handles.uitable3,'data');
helpdlg('Para intercambiar matrices, recuerda que primero debes Guardar los Datos',...
        'ATENCIÓN');
pause(2)
helpdlg('Para intercambiar matrices, recuerda que primero debes Guardar los Datos',...
        'ATENCIÓN');
pause(2)
answer = questdlg('¿Ya fueron guardados los datos?', ...
    'Menu', ...
    'Si ya fueron guardados','No los he guardado','No los he guardado');
% Handle response
switch answer
    case 'Si ya fueron guardados'
        disp([answer ' OK'])
        dessert = 1;
    case 'No los he guardado'
        disp([answer ' VAYA A GUARDAR'])
        dessert = 2;
end
set(handles.uitable2,'data',NM);
set(handles.uitable1,'data',NM2);
set(handles.uitable3,'Data',MC);

 

end




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


if get(hObject,'Value')==1 
   [Nom Dir]=uigetfile({'*.txt','*.csv'},'Escoger el archivo:');
    M=table2array(readtable([Dir,Nom]));
    for k=1:size(M,1)
        for h=1:size(M,2)
            NM{k,h}=M(k,h);
        end
    end
    if get(hObject,'Value')==1 
    [Nom Dir]=uigetfile({'*.txt','*.csv'},'Escoger el archivo:');
    M=table2array(readtable([Dir,Nom]));
    for k=1:size(M,1)
        for h=1:size(M,2)
            NM2{k,h}=M(k,h);
        end
    end
    end
NM
NM2 %nueva matriz
set(handles.uitable1,'data',NM);
set(handles.uitable2,'data',NM2);
%set(handles.edit3,'string',num2str(size(M,1)));
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton10
