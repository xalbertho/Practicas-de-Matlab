function varargout = comandoguide(varargin)
% COMANDOGUIDE MATLAB code for comandoguide.fig
%      COMANDOGUIDE, by itself, creates a new COMANDOGUIDE or raises the existing
%      singleton*.
%
%      H = COMANDOGUIDE returns the handle to a new COMANDOGUIDE or the handle to
%      the existing singleton*.
%
%      COMANDOGUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMANDOGUIDE.M with the given input arguments.
%
%      COMANDOGUIDE('Property','Value',...) creates a new COMANDOGUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before comandoguide_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to comandoguide_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help comandoguide

% Last Modified by GUIDE v2.5 02-Mar-2022 15:47:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @comandoguide_OpeningFcn, ...
                   'gui_OutputFcn',  @comandoguide_OutputFcn, ...
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


% --- Executes just before comandoguide is made visible.
function comandoguide_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to comandoguide (see VARARGIN)

% Choose default command line output for comandoguide
handles.output = hObject;
M={'Base' 25;
'Altura' 8;
'Base menor' 10};
set(handles.uitable1,'data',M,'ColumnEditable',true,...
'FontSize',12,'FontWeight','bold','ForegroundColor',[1 0 0],...
'ColumnWidth',{60 45});
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes comandoguide wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = comandoguide_OutputFcn(hObject, eventdata, handles) 
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

Z=get(handles.uitable1,'data');
if get(handles.radiobutton1,'value')==1
b=Z{1,2};%('Entrada del valor de la base del triangulo b= ');
h=Z{2,2};%('Entrada del valor de la altura del triangulo h= ');
A=b*h/2;
% formatSpec='El area calculada con b=%3.2f y h=%3.3f es A=%8.6f\n';
% fprintf(formatSpec,b,h,A)
axes(handles.axes1);cla;
plot([0 b],[0 0],'-r','LineWidth',2);grid on;hold on;
plot([0 0],[0 h],'-g','LineWidth',2);
plot([0 b],[h 0],'-b','LineWidth',2);
axis equal;
text(b/2,h+2,'Jose Alberto Barrios Mendez','FontSize',16,'color',[1 .66 0],...
'HorizontalAlignment','Center')
text(b/2,h/2,['b=',num2str(b),' h=',num2str(h),' A=',...
num2str(A)],'FontSize',10,'color',[1 0 0],...
'HorizontalAlignment','Center')
elseif get(handles.radiobutton2,'value')==1

    b=Z{1,2};%('Entrada del valor de la base del triangulo b= ');
h=Z{2,2};%('Entrada del valor de la altura del triangulo h= ');
A=b*h;
% formatSpec='El area calculada con b=%3.2f y h=%3.3f es A=%8.6f\n';
% fprintf(formatSpec,b,h,A)
axes(handles.axes1);cla;
plot([0 b],[0 0],'-k','LineWidth',2);
grid on;
axis equal;
hold on;
plot([0 0],[0 h],'Color',[0 1 .23],'LineWidth',2);
plot([0 b],[h h],'m','LineWidth',2);
plot([b b],[0 h],'LineWidth',2)
axis equal;
text(b/2,h+2,'Jose Alberto Barrios Mendez','FontSize',16,'color',[1 .66 0],...
'HorizontalAlignment','Center')
text(b/2,h/2,['b=',num2str(b),' h=',num2str(h),' A=',...
num2str(A)],'FontSize',10,'color',[1 0 0],...
'HorizontalAlignment','Center')
elseif get(handles.radiobutton3,'value')==1

axes(handles.axes1);cla;
b=Z{1,2};%('Introduce el valor de la base mayor \n bm= ');
h=Z{2,2};%('Introduce el valor de la base menor \n bn= ');
bn=Z{3,2};%('Introduce el valor de la altura \n h= ');
A=(b+bn)*h/2;
plot([0 b],[0 0],'r');
grid on;
axis equal;
hold on;
plot([(b-bn)/2 (b+bn)/2],[h h],'r');
plot([0 (b-bn)/2],[0 h],'b');
plot([b (b+bn)/2],[0 h],'b');
text(b/2,h+2,'Jose Alberto Barrios Mendez','FontSize',16,'color',[1 .66 0],...
'HorizontalAlignment','Center')
text(b/2,h/2,['b=',num2str(b),' h=',num2str(h),' A=',...
num2str(A)],'FontSize',10,'color',[1 0 0],...
'HorizontalAlignment','Center')
elseif get(handles.radiobutton4,'value')==1
  clc;
 n=Z{1,2};
 L=Z{2,2};       
Q=(-90+180/n:360/n:360)';
Apol=n*L^2/(4*tand(180/n));
r=L/(2*sind(180/n));
x=r*cosd(Q);
y=r*sind(Q);
axes(handles.axes1);cla; hold on;
for k=1:length(x)-1
    plot([x(k,1) x(k+1,1)],[y(k,1) y(k+1,1)],'-','LineWidth',2);
end
grid on; axis equal;
text(L/2,L+2,'Barrios Mendez Alberto','FontSize',15,'color',[.21 .12 .12],...
    'HorizontalAlignment','center')
text(L/2,L/2,['n=',num2str(n),'   L=',num2str(L)...,
    '   A=',num2str(Apol)],'fontsize',10,'Color',[0.35 .21 0.2])
end



% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Z=get(handles.uitable1,'data');
if get(handles.radiobutton1,'Value')==1
Zn{1,1}='Base=';Zn{1,2}=Z{1,2};
Zn{2,1}='Altura=';Zn{2,2}=Z{2,2};
elseif get(handles.radiobutton2,'Value')==1
Zn{1,1}='Base=';Zn{1,2}=Z{1,2};
Zn{2,1}='Base=';Zn{2,2}=Z{2,2};
elseif get(handles.radiobutton3,'Value')==1
Zn{1,1}='Base_Mayor=';Zn{1,2}=Z{1,2};
Zn{2,1}='Base_Menor=';Zn{2,2}=8.0;
Zn{3,1}='Altura=';Zn{3,2}=10.0;
elseif get(handles.radiobutton4,'Value')==1
Zn{1,1}='Numero de  lados=';Zn{1,2}=Z{1,2};
Zn{2,1}='Valor lado=';Zn{2,2}=Z{2,2};
end
set(handles.uitable1,'data',Zn,'ColumnWidth',{100 45});
pushbutton1_Callback(hObject, eventdata, handles)

% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
