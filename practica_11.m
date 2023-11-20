function varargout = practica_11(varargin)
% PRACTICA_11 MATLAB code for practica_11.fig
%      PRACTICA_11, by itself, creates a new PRACTICA_11 or raises the existing
%      singleton*.
%
%      H = PRACTICA_11 returns the handle to a new PRACTICA_11 or the handle to
%      the existing singleton*.
%
%      PRACTICA_11('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICA_11.M with the given input arguments.
%
%      PRACTICA_11('Property','Value',...) creates a new PRACTICA_11 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before practica_11_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to practica_11_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help practica_11

% Last Modified by GUIDE v2.5 30-Mar-2022 15:06:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @practica_11_OpeningFcn, ...
                   'gui_OutputFcn',  @practica_11_OutputFcn, ...
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


% --- Executes just before practica_11 is made visible.
function practica_11_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to practica_11 (see VARARGIN)

% Choose default command line output for practica_11
handles.output = hObject;
Datos={3 4};
Datos2={sqrt(Datos{1,1}^2+Datos{1,2}^2) atan2d(Datos{1,2},Datos{1,1})};
set(handles.uitable1,'data',Datos, ...
    'Fontsize',10,'ColumnName', ...
    {'DataX' 'DataY'},'ColumnEditable',true)
set(handles.uitable2,'data',Datos2, ...
    'Fontsize',10,'ColumnName', ...
    {'Modulo' 'Angulo'},'ColumnEditable',true)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes practica_11 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = practica_11_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.checkbox1,'Value')==1
    axis xy;view(120,30)
else 
    axis xy;view(0,90);
end
% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be() defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobutton1,'value')==1
V=get(handles.uitable1,'data');
W={sqrt(V{1,1}^2+V{1,2}^2) atan2d(V{1,2},V{1,1})};%atan2d(V{1,2},V{1,1})
set(handles.uitable2,'data',W, ...
    'Fontsize',10,'ColumnEditable',true,...
    'ColumnName',{'Modulo' 'Angulo'});
Q=(0:10:360)';
z=0.05*cosd(Q);
y=0.05*sind(Q);
x=ones(size(Q));
cla;grid on;hold on;
%plot3(V{1,1}*[0*x 0.7*x 0.7*x 1*x],V{1,1}*[y y 2*y 0*y],V{1,1}*[z z 2*z 0*z],'.');grid on;hold on;
%surf([0*x(8:10) 0.7*x(8:10) 0.7*x(8:10) 1*x(8:10)], ...
    %[y(8:10) y(8:10) 2*y(8:10) 0*y(8:10)], ...
    %[z(8:10) z(8:10) 2*z(8:10) 0*z(8:10)]);
surf(V{1,1}*[0*x 0.7*x 0.7*x 1*x],V{1,1}*[y y 2*y 0*y],V{1,1}*[z z 2*z 0*z],'Facealpha',0.25);%EJE X
surf(V{1,2}*[y y 2*y 0*y],V{1,2}*[0*x 0.7*x 0.7*x 1*x],V{1,2}*[z z 2*z 0*z],'Facealpha',0.25);%EJE Y
surf(W{1,1}*[0*x 0.7*x 0.7*x 1*x],W{1,1}*[y y 2*y 0*y],W{1,1}*[z z 2*z 0*z],'Facealpha',0.25);%EJE Z
 xg=W{1,1}*[0*x 0.7*x 0.7*x 1*x]; %definimos xg;yg;zg 
 yg=W{1,1}*[y y 2*y 0*y];
 zg=W{1,1}*[z z 2*z 0*z];
%Mrz=[cosd(W{1,2}) -sind(W{1,2}) 0;sind(W{1,2}) cosd(W{1,2}) 0;0 0 1]; %MATRIZ DE ROTACION EN Z
%ciclos anidados=combinacion de ciclos
Qr=linspace(0,W{1,2},20);

for s=1:length(Qr)
    Mrz=[cosd(Qr(1,s)) -sind(Qr(1,s)) 0;sind(Qr(1,s)) cosd(Qr(1,s)) 0;0 0 1]; %MATRIZ DE ROTACION EN Z

for k=1:size(xg,1)
    for h=1:size(xg,2)
Valorxyz=Mrz*[xg(k,h);yg(k,h);zg(k,h)];%valores xyz
xn(k,h)=Valorxyz(1,1);yn(k,h)=Valorxyz(2,1);zn(k,h)=Valorxyz(3,1);% X,Y y Z nuevos valores; donde xn=nuevos valores de x;yn=nuevos valores de y;zn=nuevos valores de z
    end
end
cla;
surf(V{1,1}*[0*x 0.7*x 0.7*x 1*x],V{1,1}*[y y 2*y 0*y],V{1,1}*[z z 2*z 0*z],'Facealpha',0.75);%EJE X
surf(V{1,2}*[y y 2*y 0*y],V{1,2}*[0*x 0.7*x 0.7*x 1*x],V{1,2}*[z z 2*z 0*z],'Facealpha',0.75);%EJE Y
surf(xn,yn,zn)
text(2,4.5,'Jose Alberto Barrios Mendez','fontsize',16,'color',[.923 .623 .832])
%axis(max([abs(V{1,1}) abs(V{1,2})])*[-1 1 -1 1]);
shading interp;
axis([min([0 W{1,1}]) max([0 W{1,1}]) min([0 W{1,1}]) max([0 W{1,1}])])
pause(0.2);
end

xlabel('Eje X');
ylabel('Eje Y');
zlabel('Eje Z');
h = rotate3d;set(h,'RotateStyle','box','Enable','on');hold on;
end
