function varargout = ecuaciones_diferenciales_practica(varargin)
% ECUACIONES_DIFERENCIALES_PRACTICA MATLAB code for ecuaciones_diferenciales_practica.fig
%      ECUACIONES_DIFERENCIALES_PRACTICA, by itself, creates a new ECUACIONES_DIFERENCIALES_PRACTICA or raises the existing
%      singleton*.
%
%      H = ECUACIONES_DIFERENCIALES_PRACTICA returns the handle to a new ECUACIONES_DIFERENCIALES_PRACTICA or the handle to
%      the existing singleton*.
%
%      ECUACIONES_DIFERENCIALES_PRACTICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECUACIONES_DIFERENCIALES_PRACTICA.M with the given input arguments.
%
%      ECUACIONES_DIFERENCIALES_PRACTICA('Property','Value',...) creates a new ECUACIONES_DIFERENCIALES_PRACTICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ecuaciones_diferenciales_practica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ecuaciones_diferenciales_practica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ecuaciones_diferenciales_practica

% Last Modified by GUIDE v2.5 26-Apr-2022 21:09:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ecuaciones_diferenciales_practica_OpeningFcn, ...
                   'gui_OutputFcn',  @ecuaciones_diferenciales_practica_OutputFcn, ...
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


% --- Executes just before ecuaciones_diferenciales_practica is made visible.
function ecuaciones_diferenciales_practica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ecuaciones_diferenciales_practica (see VARARGIN)

% Choose default command line output for ecuaciones_diferenciales_practica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ecuaciones_diferenciales_practica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ecuaciones_diferenciales_practica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
funcion=str2sym(get(handles.edit1,'string'));
[num1,den1]=numden(funcion);
xinicial=str2double(get(handles.edit6,'string'));
xfinal=str2double(get(handles.edit7,'string'));
[x1,y1]=meshgrid(xinicial:xfinal,xinicial:xfinal);
syms t y;
numz=double(sym(subs(num1,{t,y},{x1,y1})));
denz=double(sym(subs(den1,{t,y},{x1,y1})));

axes(handles.axes1);cla;hold on;axis xy;
axis([xinicial-1 xfinal+1 xinicial-1 xfinal+1])
for k=1:size(x1,1)
    for m=1:size(x1,2)
        if denz(k,m)==0
        m1(k,m)=double(1000000);
        else
            m1(k,m)=numz(k,m)/denz(k,m);
        end
        Q(k,m)=atan2d(m1(k,m),1);
        set(handles.uitable1,'data',[m1;Q],...
            'columnwidth',{75});
        
        xg=str2double(get(handles.edit3,'string')).*cosd(Q);
         yg=str2double(get(handles.edit3,'string')).*sind(Q);
            xi=x1(k,m)-xg(k,m);        yi=y1(k,m)-yg(k,m);  
            xf=x1(k,m)+xg(k,m);          yf=y1(k,m)+yg(k,m);

            plot([xi xf],[yi yf],'linewidth',1.2)
    end
end
plot(str2double(get(handles.edit4,'string')),...
    str2double(get(handles.edit5,'string')),'ob','LineWidth',2)
text(0,-2,'Jose Alberto B.M.','fontsize',18,'color',[.63 .73 .81])
syms y(t)
eqn=diff(y,t)==str2sym(get(handles.edit1,'string'))
cond=y(str2double(get(handles.edit4,'string')))==str2double(get(handles.edit5,'string'))
ySol(t)=dsolve(eqn,cond)
 

fplot(@(t)ySol(t),[str2double(get(handles.edit6,'string')),...
    str2double(get(handles.edit7,'string'))])
%eqn=diff(y,t)==-(t-2)/(y-3);
%cond=y(-1)==2;
%ySol(t)=dsolve(eqn,cond)
 



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double



% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
