function varargout = matrices(varargin)
% MATRICES MATLAB code for matrices.fig
%      MATRICES, by itself, creates a new MATRICES or raises the existing
%      singleton*.
%
%      H = MATRICES returns the handle to a new MATRICES or the handle to
%      the existing singleton*.
%
%      MATRICES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATRICES.M with the given input arguments.
%
%      MATRICES('Property','Value',...) creates a new MATRICES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matrices_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matrices_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matrices

% Last Modified by GUIDE v2.5 06-Apr-2022 20:54:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matrices_OpeningFcn, ...
                   'gui_OutputFcn',  @matrices_OutputFcn, ...
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


% --- Executes just before matrices is made visible.
function matrices_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matrices (see VARARGIN)

% Choose default command line output for matrices
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matrices wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matrices_OutputFcn(hObject, eventdata, handles) 
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
espera=str2num(get(handles.edit1,'string'));
espera2=str2num(get(handles.edit3,'string'));
for h=1:S(1,1)
    formatSpecs= ['R',num2str(h), '-> R',num2str(h), '/ A(',num2str(h),',',num2str(h),')'];
    set(handles.text2,'string',formatSpecs)
    for k= 1:S(1,2)
        s{h,k}=(1/NM{h,h})*NM{h,k};
        set(handles.uitable2,'data',s);
        formatSpecs2= ['A(',num2str(h),',',num2str(k),')=A(',num2str(h),',',num2str(k),')/A(',num2str(h),',',num2str(h),')'];
        set(handles.text3,'string',formatSpecs2)
        pause(espera2)
    end
    NM=get(handles.uitable2,'data');
    s=NM;
    for r=1:S(1,1)
        if r==h
            continue
        end
        formatSpecs= ['R',num2str(r), '-> R',num2str(r), '- R',num2str(h)];
        set(handles.text2,'string',formatSpecs);
        for c=1:S(1,2);
            s{r,c}=s{r,c}-(NM{r,h}*s{h,c});
            set(handles.uitable2,'data',s);
            formatSpecs2= ['A(',num2str(r),',',num2str(c),')=A(',num2str(r),',',num2str(c),')-A(',num2str(h),',',num2str(c),')'];
            set(handles.text3,'string',formatSpecs2);
            pause(espera2);
        end
        NM=get(handles.uitable2,'data');
        s=NM;
    end
    pause(espera)
    set(handles.uitable1,'data',s);
end



    




    % --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
if get(hObject,'value')==1
    set(handles.uitable3,'visible','on');
else
    set(handles.uitable3,'visible','off');
end

% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'value')==1
    A=get(handles.uitable3,'data');
    set(handles.uitable1,'data',A);
    set(handles.uitable1,'columneditable',true);
else
    set(handles.uitable1,'columneditable',false)
end
% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3
if get(hObject,'value')==1
    [Nom Dir]=uigetfile({'*.txt','*.csv'},'Escoger el archivo:');
    M=table2array(readtable([Dir,Nom]));
    for k=1:size(M,1)
        for h=1:size(M,2)
            NM{k,h}=M(k,h);
        end
    end
    NM
    set(handles.uitable1,'data',NM);
    set(handles.uitable3,'data',NM);
    set(handles.edit3,'string',num2str(size(M,1)));
end


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
LC=get(handles.uitable,'columnname');
B=array2table(cell2mat(get(handles.uitable1,'data')),...
    'variablename',LC);
A=array2table(cell2mat(get(handles.uitable3,'data')));
AA=clock;
[file,name]=uiputfile('*.*','seleccione el nombre del archivo o acepte el puesto',...
    ['matrices',num2str(AA(1)),num2str(AA(2)),num2str(AA(3)) ...
    ,num2str(AA(4)),numw2str(AA(5)),num2str(1000*AA(6)),'.txt'])
fid=fopen([name,file],'w');
fprintf(fid,'u   v  w  x  y  z  b');
fprintf(fin,'\n');
for k=1:size(A,1)
    for m=1:size(A,2)
        fprintf(fid,'%.4f',B{k,m});
    end
    fprintf(fid,'\n');
end
    fprintf(fid,'\n');
    fclose(fid);

% Hint: get(hObject,'Value') returns toggle state of checkbox4



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
