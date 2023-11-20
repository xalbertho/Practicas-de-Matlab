function varargout = Grupo1EM10a4(varargin)
% GRUPO1EM10A4 MATLAB code for Grupo1EM10a4.fig
%      GRUPO1EM10A4, by itself, creates a new GRUPO1EM10A4 or raises the existing
%      singleton*.
%
%      H = GRUPO1EM10A4 returns the handle to a new GRUPO1EM10A4 or the handle to
%      the existing singleton*.
%
%      GRUPO1EM10A4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRUPO1EM10A4.M with the given input arguments.
%
%      GRUPO1EM10A4('Property','Value',...) creates a new GRUPO1EM10A4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Grupo1EM10a4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Grupo1EM10a4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Grupo1EM10a4

% Last Modified by GUIDE v2.5 01-Apr-2022 10:47:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Grupo1EM10a4_OpeningFcn, ...
                   'gui_OutputFcn',  @Grupo1EM10a4_OutputFcn, ...
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


% --- Executes just before Grupo1EM10a4 is made visible.
function Grupo1EM10a4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Grupo1EM10a4 (see VARARGIN)

% Choose default command line output for Grupo1EM10a4
handles.output = hObject;
format rational

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Grupo1EM10a4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Grupo1EM10a4_OutputFcn(hObject, eventdata, handles) 
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
NM=get(handles.uitable3,'data');
S=size(NM);
s=NM;
espera=str2num(get(handles.edit4,'string'));
espera2=str2num(get(handles.edit5,'string'));
for h=1:S(1,1)
    formatSpecs= ['R',num2str(h), '-> R',num2str(h), '/ A(',num2str(h),',',num2str(h),')'];
    set(handles.edit2,'string',formatSpecs)
    for k= 1:S(1,2)
        s{h,k}=(1/NM{h,h})*NM{h,k};
        set(handles.uitable2,'data',s);
        formatSpecs2= ['A(',num2str(h),',',num2str(k),')=A(',num2str(h),',',num2str(k),')/A(',num2str(h),',',num2str(h),')'];
        set(handles.edit3,'string',formatSpecs2)
        pause(espera2)
    end
    NM=get(handles.uitable2,'data');
    s=NM;
    for r=1:S(1,1)
        if r==h
            continue
        end
        formatSpecs= ['R',num2str(r), '-> R',num2str(r), '- R',num2str(h)];
        set(handles.edit2,'string',formatSpecs);
        for c=1:S(1,2);
            s{r,c}=s{r,c}-(NM{r,h}*s{h,c});
            set(handles.uitable2,'data',s);
            formatSpecs2= ['A(',num2str(r),',',num2str(c),')=A(',num2str(r),',',num2str(c),')-A(',num2str(h),',',num2str(c),')'];
            set(handles.edit3,'string',formatSpecs2);
            pause(espera2);
        end
        NM=get(handles.uitable2,'data');
        s=NM;
    end
    pause(espera)
    set(handles.uitable1,'data',s);
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NM=get(handles.uitable3,'data');
set(handles.uitable1,'data',NM);
s=NM;
set(handles.uitable2,'data',s);


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'value')==1
    set(handles.uitable3,'visible','on');
else
    set(handles.uitable3,'visible','off')
end

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'value')==1
    A=get(handles.uitable3,'data');
    set(handles.uitable1,'data',A);
    set(handles.uitable1,'ColumnEditable',true);
else
    set(handles.uitable1,'ColumnEditable',false);
end


% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'value')==1
    [Nom Dir]=uigetfile({'*.txt','*.csv'},'Escoger el archivo:');
    M=(readtable([Dir,Nom]));
    M=table2array(readtable([Dir Nom]));
    for k=1:size(M,1)
        for h=1:size(M,2)
            NM{k,h}=M(k,h);
        end
    end
    NM;
    set(handles.uitable1,'data',NM);
    set(handles.uitable3,'data',NM);
    set(handles.uitable2,'data',NM);
    S=size(NM);
    set(handles.edit1,'string',S(1,1));
    set(handles.edit2,'string',' ');
    set(handles.edit3,'string',' ');

end
% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'value')==1
NM=get(handles.uitable1,'data');
hora=clock;
nombredetuarchivo=['Matriz',num2str(hora(1)),num2str(hora(2)),num2str(hora(3)),num2str(hora(4)),num2str(hora(5)),num2str(1000*hora(6)),'.txt'];
writecell(NM,nombredetuarchivo,'Delimiter','tab');
end
% Hint: get(hObject,'Value') returns toggle state of checkbox4
