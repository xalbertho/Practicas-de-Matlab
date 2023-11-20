function varargout = practica10_2b(varargin)
% PRACTICA10_2B MATLAB code for practica10_2b.fig
%      PRACTICA10_2B, by itself, creates a new PRACTICA10_2B or raises the existing
%      singleton*.
%
%      H = PRACTICA10_2B returns the handle to a new PRACTICA10_2B or the handle to
%      the existing singleton*.
%
%      PRACTICA10_2B('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICA10_2B.M with the given input arguments.
%
%      PRACTICA10_2B('Property','Value',...) creates a new PRACTICA10_2B or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before practica10_2b_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to practica10_2b_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help practica10_2b

% Last Modified by GUIDE v2.5 23-Mar-2022 10:10:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @practica10_2b_OpeningFcn, ...
                   'gui_OutputFcn',  @practica10_2b_OutputFcn, ...
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


% --- Executes just before practica10_2b is made visible.
function practica10_2b_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to practica10_2b (see VARARGIN)

% Choose default command line output for practica10_2b
handles.output = hObject;
Datos={'r =' 0; ...
'R =' 5;
'h =' 0;
'H =' 0};
set (handles.uitable1,'data',Datos,'fontsize',12 ...
    ,'columneditable',true)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes practica10_2b wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = practica10_2b_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from ha'hndles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
M=get(handles.uitable1,'data');
if get(handles.radiobutton8,'value')==1
if get(handles.radiobutton5,'value')==1
    hold on;
else
    cla;
end
if get(handles.radiobutton1,'value')==1
    Q=(0:10:360)';
    x=[0*cosd(Q) M{2,2}*cosd(Q)];
    y=[0*sind(Q) M{2,2}*sind(Q)];
    z=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton2,'value')==1
    Q=linspace(0,2*pi,35)';
    x=[M{1,2}*cos(Q) M{2,2}*cos(Q)];
    y=[M{1,2}*sin(Q) M{2,2}*sin(Q)];
    z=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton3,'value')==1
    Q=linspace(0,2*pi,35)';
    x=[M{1,2}*cos(Q) M{2,2}*cos(Q)];
    y=[M{1,2}*sin(Q) M{2,2}*sin(Q)];
    z=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton4,'value')==1
    Q=linspace(0,2*pi,35)';
    x=[M{1,2}*cos(Q) M{1,2}*cos(Q)];
    y=[M{1,2}*sin(Q) M{1,2}*sin(Q)];
    z=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
end
elseif get(handles.radiobutton7,'value')==1
    if get(handles.radiobutton5,'value')==1
    hold on;
else
    cla;
end
if get(handles.radiobutton1,'value')==1
    Q=(0:10:360)';
    z=[0*cosd(Q) M{2,2}*cosd(Q)];
    y=[0*sind(Q) M{2,2}*sind(Q)];
    x=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton2,'value')==1
    Q=linspace(0,2*pi,35)';
    z=[M{1,2}*cos(Q) M{2,2}*cos(Q)];
    y=[M{1,2}*sin(Q) M{2,2}*sin(Q)];
    x=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton3,'value')==1
    Q=linspace(0,2*pi,35)';
    z=[M{1,2}*cos(Q) M{2,2}*cos(Q)];
    y=[M{1,2}*sin(Q) M{2,2}*sin(Q)];
    x=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton4,'value')==1
    Q=linspace(0,2*pi,35)';
    z=[M{1,2}*cos(Q) M{1,2}*cos(Q)];
    y=[M{1,2}*sin(Q) M{1,2}*sin(Q)];
    x=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
end
elseif get(handles.radiobutton6,'value')==1
    if get(handles.radiobutton5,'value')==1
    hold on;
else
    cla;
end
if get(handles.radiobutton1,'value')==1
    Q=(0:10:360)';
    x=[0*cosd(Q) M{2,2}*cosd(Q)];
    z=[0*sind(Q) M{2,2}*sind(Q)];
    y=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton2,'value')==1
    Q=linspace(0,2*pi,35)';
    x=[M{1,2}*cos(Q) M{2,2}*cos(Q)];
    z=[M{1,2}*sin(Q) M{2,2}*sin(Q)];
    y=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton3,'value')==1
    Q=linspace(0,2*pi,35)';
    x=[M{1,2}*cos(Q) M{2,2}*cos(Q)];
    z=[M{1,2}*sin(Q) M{2,2}*sin(Q)];
    y=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
elseif get(handles.radiobutton4,'value')==1
    Q=linspace(0,2*pi,35)';
    x=[M{1,2}*cos(Q) M{1,2}*cos(Q)];
    z=[M{1,2}*sin(Q) M{1,2}*sin(Q)];
    y=[M{3,2}*ones(size(Q,1),1) M{4,2}*ones(size(Q,1),1)];
end
end
c=rand(size(x));
surf(x,y,z,c,'FaceAlpha',0.5);
xlabel('Eje X');
ylabel('Eje Y');
zlabel('Eje Z');
shading interp;
axis equal; axis xy
h = rotate3d;set(h,'RotateStyle','box','Enable','on');hold on;
