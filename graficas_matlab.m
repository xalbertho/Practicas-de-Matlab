function varargout = graficas_matlab(varargin)
% GRAFICAS_MATLAB MATLAB code for graficas_matlab.fig
%      GRAFICAS_MATLAB, by itself, creates a new GRAFICAS_MATLAB or raises the existing
%      singleton*.
%
%      H = GRAFICAS_MATLAB returns the handle to a new GRAFICAS_MATLAB or the handle to
%      the existing singleton*.
%
%      GRAFICAS_MATLAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICAS_MATLAB.M with the given input arguments.
%
%      GRAFICAS_MATLAB('Property','Value',...) creates a new GRAFICAS_MATLAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graficas_matlab_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graficas_matlab_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graficas_matlab

% Last Modified by GUIDE v2.5 26-Feb-2022 20:40:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graficas_matlab_OpeningFcn, ...
                   'gui_OutputFcn',  @graficas_matlab_OutputFcn, ...
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


% --- Executes just before graficas_matlab is made visible.
function graficas_matlab_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graficas_matlab (see VARARGIN)

% Choose default command line output for graficas_matlab
handles.output = hObject;

M={'Base' 25;
'Altura' 8};
set(handles.uitable1,'data',M,'columnEditable',true...
    ,'fontsize',12,'fontweight','bold','foregroundcolor',[1 0 1]...
    ,'columnwidth',{60 45});



% Update handles structure
guidata(hObject, handles);

% UIWAIT makes graficas_matlab wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = graficas_matlab_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Z=get(handles.uitable1,'data');
if get(handles.radiobutton1,'value')==1
b=Z{1,2};%('Entrada del valor de la base del triangulo b= ');
h=Z{2,2};%('Entrada del valor de la altura del triangulo h= ');
A=b*h/2;
   
axes(handles.axes1);cla;
plot([0 b],[0 0],'-r','LineWidth',2);grid on;hold on;
plot([0 0],[0 h],'-g','LineWidth',2);
%plot([0 b],[h 0],'-b','LineWidth',2);
axis equal;
text(b/2,h,'barrios mendez alberto','FontSize',16,'color',[1 0 0],...
'HorizontalAlignment','Center')
text(b/2,h/2,['b=',num2str(b),' h=',num2str(h),' A=',...
num2str(A)],'FontSize',10,'color',[1 0 0],...
'HorizontalAlignment','Center')
elseif get(handles.radiobutton2,'value')==1

end

if get(handles.radiobutton2,'value')==1
b=Z{1,2};%('Entrada del valor de la base del triangulo b= ');
h=Z{2,2};%('Entrada del valor de la altura del triangulo h= ');
A=b*h;
   
axes(handles.axes1);cla;
plot([0 b],[0 0],'-r','LineWidth',2);grid on;hold on;
plot([0 0],[0 h],'-g','LineWidth',2);
plot([0 b],[h 0],'-b','LineWidth',2);
axis equal;
text(b/2,h,'barrios mendez alberto','FontSize',16,'color',[1 0 0],...
'HorizontalAlignment','Center')
text(b/2,h/2,['b=',num2str(b),' h=',num2str(h),' A=',...
num2str(A)],'FontSize',10,'color',[1 0 0],...
'HorizontalAlignment','Center')
elseif get(handles.radiobutton3,'value')==1
end

% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Z=get(handles.uitable1,'data');
if get(handles.radiobutton1,'value')==1
    Zn{1,1}='Base=';Zn{1,2}=z{1,2};
    Zn{2,1}='altura=';Zn{2,2}=z{2,2};
    
elseif get(handles.radiobutton2,'value')==1
       Zn{1,1}='Base='; Zn{1,2}=z{1,2};
    Zn{2,1}='altura=';Zn{2,2}=z{2,2};
elseif get(handles.radiobutton3,'value')==1
       Zn{1,1}='BaseMayor=';Zn{1,2}=z{1,2};
    Zn{2,1}='BaseMenor=';Zn{2,2}=z{2,2};
    Zn{3,1}='Altura=';Zn{3,2}=1;
elseif get(handles.radiobutton4,'value')==1
    Zn{1,1}='n=';Zn{1,2}=z{1,2};
    Zn{2,1}='Longitud=';Zn{2,2}=z{2,2};

end
set(handles.uitable1,'data',Zn,'colomnwidth',{45 80});
